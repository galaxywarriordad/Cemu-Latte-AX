# 🤝 Contributing to Cemu Latte [AX]

Thank you for your interest in **Cemu Latte `[AX]`**! Because this fork pairs upstream Cemu with [`ax-sdk`](https://github.com/galaxywarriordad/ax-sdk) for deterministic physical-core isolation, PGO builds, and hardware IRQ/VRAM discipline, please review these guidelines before submitting issues or pull requests.

---

## ⚖️ Legal & Copyright Policy

In strict alignment with upstream **Cemu** (`cemu-project/Cemu`):

* **Original Hardware Required:** You **must own an original Nintendo Wii U console** and dump your own system files, cryptographic keys (`otp.bin`, `seeprom.bin`, `keys.txt`), and legally purchased games directly from your own hardware.
* **Zero Piracy Tolerance:** Any issue, pull request, commit, or log attachment referencing or containing copyrighted Nintendo Wii U firmware, title keys, WUD/WUX/WUA/RPX dumps, or proprietary third-party binaries (`Lossless.dll`) will be closed immediately.

---

## 🛠️ Engineering & Code Standards

1. **Shared Silicon Core (`ax-sdk`):**
   * Keep generic CPU topology detection (`ax::topology`), HugeTLB/Large-Page fastmem (`ax::memory`), and lock-free audio primitives (`ax::audio`) inside [`ax-sdk`](https://github.com/galaxywarriordad/ax-sdk) rather than duplicating platform shims inside Cemu.
2. **Win32 Header & Compiler Hygiene:**
   * Define `NOMINMAX` and `WIN32_LEAN_AND_MEAN` before including `<windows.h>` and avoid macro collisions with Cemu's HLE subsystems.
3. **Real-Time Core & Audio Safety:**
   * Never block or allocate heap memory on **Core 0 (`0x01`, Audio / MMCSS)** or **Core 1 (`0x02`, Vulkan Command Submission)**. Keep background shader compilation and texture decompression quarantined on **Core 5 (`0x20`)**.
4. **License Compatibility (`MPL-2.0`):**
   * Upstream Cemu source files are licensed under **Mozilla Public License 2.0 (`MPL-2.0`)**; new Cemu subsystem files must carry standard MPL-2.0 headers while linking cleanly against MIT-licensed `ax::core`.

---

## 🐛 Submitting Bug Reports & Telemetry

When opening an issue on **`galaxywarriordad/Cemu-Latte-AX`**, please include:

1. **Edition & OS:** Specify whether you are running the **Windows 10/11 PGO Edition** or the **Batocera (`Piccolo [AX]`) Edition**.
2. **Hardware Topology:** CPU model (SMT/CCX layout), discrete GPU + driver version, Intel iGPU model, and USB DAC model.
3. **Logs & Graphics Packs:** Attach Cemu's `log.txt` and note active graphic packs or `ax-sdk` core affinity masks.
