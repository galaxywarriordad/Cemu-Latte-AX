# 🛡️ Security Policy & Host System Privilege Notes

## ⚖️ Legal & Anti-Piracy Policy

**Cemu Latte `[AX]`** is an open-source Wii U emulation fork licensed under **Mozilla Public License 2.0 (MPL-2.0)**.

* **Original Hardware Required:** In alignment with upstream **Cemu**, you **must own an original Nintendo Wii U console** and dump your own system files, cryptographic keys, and legally purchased games from your own hardware.
* **Zero Proprietary Assets:** Any issue, pull request, or attachment containing copyrighted Wii U keys, firmware binaries, game dumps, or proprietary third-party DLLs (`Lossless.dll`) will be rejected and removed immediately.

---

## 🔒 Host System Privileges & Kernel-Surface Audit

On Windows 10/11, **Cemu Latte `[AX]`** leverages standard Win32 user-mode APIs via `ax-sdk` and optional Windows PnP Registry IRQ policies:

| Mechanism | Scope | Privilege Required | Security & Stability Impact |
| :--- | :--- | :--- | :--- |
| **`SeLockMemoryPrivilege`** (`MEM_LARGE_PAGES`) | User-mode `Cemu.exe` process | Standard user account once granted via `secpol.msc` (*Lock pages in memory*) | Backs guest memory reserves with `2 MB` large pages to reduce DTLB misses. Falls back cleanly to `4 KB` pages if not granted. |
| **MMCSS `Pro Audio` & Thread Affinity** | User-mode threads inside `Cemu.exe` | Standard user account | Pins audio, Vulkan, PowerPC JIT, and background threads to isolated physical cores without token elevation. |
| **Hardware MSI IRQ Steering** (`ax-sdk/scripts/win32/set_irq_affinity.ps1`) | Windows PnP Registry (`Affinity Policy`) | **Administrator** (one-time registry write) | Writes `DevicePolicy = 4` and `AssignmentSetOverride` masks (`0x01`, `0x02`, `0x20`) for USB xHCI, GPU, and storage controllers. **Installs zero kernel drivers (`.sys`).** |

---

## 🔄 Safe Rollback & Uninstallation

To revert Windows hardware interrupt steering back to stock Windows defaults, open PowerShell as **Administrator** and run:

```powershell
Get-ChildItem "HKLM:\SYSTEM\CurrentControlSet\Enum" -Recurse -ErrorAction SilentlyContinue |
  Where-Object { $_.PSChildName -eq "Affinity Policy" } |
  ForEach-Object {
      Remove-ItemProperty -Path $_.PSPath -Name "DevicePolicy","AssignmentSetOverride" -ErrorAction SilentlyContinue
  }
Write-Host "All custom IRQ affinity overrides cleared. Reboot Windows to restore default OS routing."
```

---

## 📬 Reporting a Vulnerability or Memory-Safety Bug

If you discover a memory-safety issue, buffer overflow, or privilege-handling bug in **Cemu Latte `[AX]`**:

* Open an issue or private security advisory on **`galaxywarriordad/Cemu-Latte-AX`** with reproduction steps, your hardware topology, and relevant logs (`log.txt`).
* Do **not** attach copyrighted game dumps, decryption keys, or firmware files to bug reports.
