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
---

## 🌐 Silicon Preservation Society Ecosystem

### Core Repositories (8)

1. **Shared Silicon SDK (GitHub):** [`galaxywarriordad/ax-sdk`](https://github.com/galaxywarriordad/ax-sdk.git) — Shared dependency-free C++20 deterministic hardware runtime (`ax::sdk` / `v1_36_2`), dynamic Intel SMT / AMD CCX topology resolver, platform shims, and master architecture specs.
2. **Linux USB Console & A/V Appliance (GitHub):** [`galaxywarriordad/Piccolo-AX`](https://github.com/galaxywarriordad/Piccolo-AX.git) — Standalone `< 300 MB` `toram` EROFS Batocera / Buildroot `Linux 6.12-rt` `x86_64` appliance (`batocera-ax-external`) with direct ALSA `SCHED_FIFO` and `iHD` VA-API `dma_buf`.
3. **Linux Handheld Appliance (GitHub):** [`galaxywarriordad/Piccolo-2go`](https://github.com/galaxywarriordad/Piccolo-2go.git) — Deterministic Buildroot `aarch64` (`RK3326` `1:2:1`) retro handheld OS for **BATLEXP G350** and **R36S**.
4. **Optional Desktop Tier (GitHub):** [`galaxywarriordad/piccolo-ax-desktop`](https://github.com/galaxywarriordad/piccolo-ax-desktop.git) — On-demand C/C++ LXQt/X11 desktop workbench (`< 42 MB` budget).
5. **Commodore Amiga Engine (GitHub):** [`galaxywarriordad/Amiberry-AX`](https://github.com/galaxywarriordad/Amiberry-AX.git) — Deterministic Commodore Amiga 500 / 1200 / CD32 engine linked against `ax-sdk`.
6. **Bare-Metal Audio & A/V Engine (GitHub):** [`galaxywarriordad/FLAC_AX`](https://github.com/galaxywarriordad/FLAC_AX.git) — RAM-resident bit-perfect audio player, `ax_av_studio` MIDI/DSP synth workstation, and `ax_video_upscaler` stream pipeline.
7. **Retro Multi-System Engine (GitHub):** [`galaxywarriordad/Generation-X-AX`](https://github.com/galaxywarriordad/Generation-X-AX.git) — Deterministic multi-console `[AX]` integration across `Flycast` and `RMG`.
8. **Wii U Engine (GitHub):** [`galaxywarriordad/Cemu-Latte-AX`](https://github.com/galaxywarriordad/Cemu-Latte-AX.git) — Deterministic Nintendo Wii U (Latte GPU) AX engine powered by `ax::sdk`.

### Sister & Downstream Forks

- **Main Switch Engine Fork (Forgejo):** [`galaxywarriordad/Eden-Espresso-Wave-AX`](https://git.eden-emu.dev/galaxywarriordad/Eden-Espresso-Wave-AX.git) — Deterministic Nintendo Switch fork tuned for `ax::sdk` core topology, Vulkan telemetry, and low-latency audio, kept aligned with upstream for frictionless PR cherry-picks.
- **Upstream Ecosystem Hub (Forgejo):** [`eden-emu/eden`](https://git.eden-emu.dev/eden-emu/eden/) — Upstream Eden Switch emulator reference repository.
## Ecosystem Architecture & Topology

This repository is part of **The Silicon Preservation Society** (`[AX]`) ecosystem—a nine-repository bare-metal hardware preservation stack built around **Policy-in-SDK / Adapter-in-Consumer** separation:

* **Shared Runtime Core:** [`ax-sdk`](https://github.com/galaxywarriordad/ax-sdk) — C++20 `2:3:1` / `1:2:1` core topology, `EngineConfig`, HugeTLB fastmem, and VRAM guardrails.  
* **Bare-Metal OS & Workbench:** [`Piccolo-AX`](https://github.com/galaxywarriordad/Piccolo-AX) (`x86_64` `6.12-rt` appliance), [`Piccolo-2go`](https://github.com/galaxywarriordad/Piccolo-2go) (`ARM64` `RK3326` handheld OS), [`piccolo-ax-desktop`](https://github.com/galaxywarriordad/piccolo-ax-desktop) (isolated X11 workbench).  
* **Media & Emulation Consumers:** [`FLAC_AX`](https://github.com/galaxywarriordad/FLAC_AX), [`Eden-Espresso-Wave-AX`](https://github.com/galaxywarriordad/Eden-Espresso-Wave-AX), [`Cemu-Latte-AX`](https://github.com/galaxywarriordad/Cemu-Latte-AX), [`Amiberry-AX`](https://github.com/galaxywarriordad/Amiberry-AX), and [`Generation-X-AX`](https://github.com/galaxywarriordad/Generation-X-AX).

For full core-pinning tables (`2:3:1` and `1:2:1`), cross-repository data flow, and architectural specifications, see the master guide in [**`ax-sdk/docs/ECOSYSTEM_ARCHITECTURE.md`](https://github.com/galaxywarriordad/ax-sdk/blob/main/docs/ECOSYSTEM_ARCHITECTURE.md)**.
---

## 🤝 Contributing & License

* **Contributing:** See [CONTRIBUTING.md](CONTRIBUTING.md) and [SECURITY.md](SECURITY.md) for code style, Wii U hardware-ownership requirements, and contribution guidelines.
* **License:** Cemu is licensed under the **Mozilla Public License 2.0** ([LICENSE.txt](LICENSE.txt)). Exempt from this are all files in the `dependencies` directory for which the licenses of the original code apply, as well as individual files in the `src` folder as specified in those file headers respectively[cite: 31].
