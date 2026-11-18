# 📜 Third-Party Notices, Legal Disclaimer & Attribution

## ⚖️ Legal Disclaimer & Hardware Ownership Notice

**Cemu Latte `[AX]`** is an independent open-source software preservation fork of **Cemu** licensed under the **Mozilla Public License 2.0 (MPL-2.0)**.

* **No Bundled Proprietary Files:** This repository does not include, host, or distribute any copyrighted Nintendo Wii U system firmware, cryptographic keys, or commercial game software.
* **Hardware Ownership Requirement:** Users **must legally own an original Nintendo Wii U console** and dump their own system files, keys, and legally purchased games directly from their own hardware.
* **No Affiliation:** Nintendo and Wii U are registered trademarks of Nintendo Co., Ltd. This project is not affiliated with, endorsed by, or sponsored by Nintendo Co., Ltd.

---

## 🧩 Integrated Libraries, SDKs & Dependencies

| Component | License | Role in Cemu Latte `[AX]` |
| :--- | :--- | :--- |
| **Cemu (`cemu-project/Cemu`)** | Mozilla Public License 2.0 (MPL-2.0) | Upstream Wii U HLE/LLE emulation core, PowerPC JIT recompiler, and Latte GPU renderer. |
| **`ax-sdk` (`libax_core`)** | MIT License | Shared C++20 deterministic core topology, HugeTLB/Large-Page memory, VRAM shield, and audio ring library. |
| **Vulkan Headers & Vulkan Memory Allocator (VMA)** | Apache-2.0 / MIT License | Vulkan 1.4 graphics dispatch and GPU memory allocation management. |
| **wxWidgets / SDL2** | wxWindows Library Licence / zlib License | Cross-platform desktop UI, windowing, and controller input layer. |
| **Cubeb / XAudio2 / ALSA** | ISC / System APIs | Low-latency host audio output backends paired with `ax::audio` ring buffering. |
| **Zstandard (ZSTD), zlib & OpenSSL** | BSD-3-Clause / zlib / Apache-2.0 | Compressed Wii U archive (`.wua`) streaming and cryptographic hashing utilities. |
