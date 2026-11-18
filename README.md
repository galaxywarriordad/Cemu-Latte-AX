# ☕ Cemu Latte [AX] — Deterministic Wii U Emulator Fork

A deterministic fork of [Cemu](https://github.com/cemu-project/Cemu) engineered by **The Silicon Preservation Society** to extend the life of proven PC hardware and keep it out of landfills.

Named after **Latte**—the Wii U's AMD GPU—**Cemu Latte `[AX]`** offers two focused editions:
1. **Windows 10/11 Baseline Edition:** Compiled with Profile-Guided Optimization (PGO), Coffee Lake instruction targeting (`-march=skylake`), and Vulkan 1.4 support for clean, reliable desktop play.
2. **Batocera Linux (`Piccolo [AX]`) Edition:** Integrates [`ax-sdk`](https://github.com/galaxywarriordad/ax-sdk) for locked `2:3:1` physical core isolation, Intel iGPU video/deinterlace offloading, `5.50 GB` VRAM safeguards, and crackle-free USB DAC audio.

---

## 🔗 The Silicon Preservation Society — Official Repository Network

*(See [REPO_TOPOLOGY.md](REPO_TOPOLOGY.md) for the full cross-host dependency diagram.)*

| Project | Role | Canonical Repository | Base / Upstream |
| :--- | :--- | :--- | :--- |
| **Cemu Latte `[AX]`** | Nintendo Wii U (Win10/11 PGO + Batocera `[AX]`) | [GitHub (`Cemu-Latte-AX`)](https://github.com/galaxywarriordad/Cemu-Latte-AX) | Upstream: [Cemu](https://github.com/cemu-project/Cemu) |
| **`ax-sdk`** | Shared C++20 Runtime Core (`libax_core`) | [GitHub (`ax-sdk`)](https://github.com/galaxywarriordad/ax-sdk) | Dependency-Free C++20 Core |
| **Eden Espresso Wave `[AX]`** | Nintendo Switch (Windows 10/11 PGO + Linux) | [Eden Forgejo (`Eden-Espresso-Wave-AX`)](https://git.eden-emu.dev/galaxywarriordad/Eden-Espresso-Wave-AX.git) | Upstream: [Eden](https://git.eden-emu.dev/eden-emu/eden/) |
| **Piccolo `[AX]`** | `< 300 MB` Bare-Metal Linux Console OS | [GitHub (`Piccolo-AX`)](https://github.com/galaxywarriordad/Piccolo-AX) | Base: [Batocera Linux](https://github.com/batocera-linux/batocera.linux) |

---

## 🎯 Key `[AX]` Features

* **Flat Frametimes on Classic Silicon:** PGO-trained PowerPC JIT codegen paired with dedicated core isolation on [`Piccolo [AX]`](https://github.com/galaxywarriordad/Piccolo-AX).
* **Intel iGPU Offloading:** Routes H.264 cutscene decoding and video processing onto Intel UHD Graphics so your discrete GPU stays focused on 3D rendering.
* **VRAM Protection (`5.50 GB` Shield):** Prevents out-of-memory stutters and driver crashes on 6 GB cards like the GTX 980 Ti and GTX 1060.
* **Bit-Perfect Low-Latency Audio:** Zero-underrun USB DAC audio pipeline powered by [`ax-sdk`](https://github.com/galaxywarriordad/ax-sdk).

---

## 🌐 Upstream Cemu Ecosystem & Community Links

Cemu is a Wii U emulator written in C/C++ that is able to run most Wii U games and homebrew in a playable state. **Contains no proprietary Nintendo firmware, title keys, or games.**

### Official Cemu Links
* [Upstream Cemu Repository](https://github.com/cemu-project/Cemu)
* [Official Website](https://cemu.info)
* [Compatibility List / Wiki](https://wiki.cemu.info/wiki/Main_Page)
* [Setup Guide](https://cemu.cfw.guide)
* [Open Source Announcement](https://www.reddit.com/r/cemu/comments/wwa22c/cemu_20_announcement_linux_builds_opensource_and/)
* [Official Subreddit](https://reddit.com/r/Cemu)
* [Official Discord](https://discord.gg/5psYsup)

### Related Upstream Repositories
* [Cemu-Language (UI Translations)](https://github.com/cemu-project/Cemu-Language)
* [Cemu's Community Graphic Packs](https://github.com/cemu-project/cemu_graphic_packs)

---

## 🛠️ Build Instructions & Issues

* **Building from Source:** To compile the upstream Cemu baseline on Windows, Linux, or macOS, view [BUILD.md](BUILD.md).
* **Upstream Releases:** Standard official builds can be downloaded from [Upstream Cemu GitHub Releases](https://github.com/cemu-project/Cemu/releases/) or [Flathub](https://flathub.org/apps/info.cemu.Cemu).
* **Reporting Issues:**
  * Issues specific to **Cemu Latte `[AX]`**, PGO profiles, or `ax-sdk` integration should be filed in this fork's [Issues](https://github.com/galaxywarriordad/Cemu-Latte-AX/issues) tab.
  * General upstream emulation issues can be checked against [Upstream Cemu GitHub Issues](https://github.com/cemu-project/Cemu/issues) and the legacy [bugs.cemu.info](https://bugs.cemu.info) tracker.

---

## 🤝 Contributing & License

* **Contributing:** See [CONTRIBUTING.md](CONTRIBUTING.md) and [SECURITY.md](SECURITY.md) for code style, Wii U hardware-ownership requirements, and contribution guidelines.
* **License:** Cemu is licensed under the **Mozilla Public License 2.0** ([LICENSE.txt](LICENSE.txt)). Exempt from this are all files in the `dependencies` directory for which the licenses of the original code apply, as well as individual files in the `src` folder as specified in those file headers respectively[cite: 31].
