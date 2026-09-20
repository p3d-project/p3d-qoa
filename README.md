# P3D QOA - The “Quite OK Audio Format”

*A fork of https://github.com/phoboslab/qoa designed for BlocksDS, maintained by The P3D Project*

Single-file library for C/C++

See [qoa.h](https://github.com/phoboslab/qoa/blob/master/qoa.h) for
the documentation and format specification.

More info at: https://qoaformat.org

Audio samples in WAV & QOA format can be found at: https://qoaformat.org/samples/

⚠️ This implementation has not yet been fuzzed. Don't use it with untrusted input.

![QOA Logo](https://qoaformat.org/qoa-logo-new.svg)

> Want to help? Join the [Discord!](https://discord.gg/CQnkc5gS6a) Any help, big or small, would be greatly appreciated!

![Stars](https://img.shields.io/github/stars/p3d-project/p3d-qoa?style=flat-square&color=gold)
![Forks](https://img.shields.io/github/forks/p3d-project/p3d-qoa?style=flat-square&color=blue)
![Last Commit](https://img.shields.io/github/last-commit/p3d-project/p3d-qoa?style=flat-square&color=green)
![License](https://img.shields.io/badge/license-MIT-red)
![License](https://img.shields.io/badge/license-CC_BY--NC--SA_4.0-red)

![C](https://img.shields.io/badge/C-A8B9CC?logo=C&logoColor=white)

[![Discord](https://img.shields.io/discord/1498850477545357482?label=Discord&logo=discord&style=flat-square&color=5865F2)](https://discord.gg/CQnkc5gS6a)

---

## Batteries Included (Dependencies)

p3d-qoa bundles its dependencies under /libs, which are the following:

1. **[dr_libs](https://github.com/mackron/dr_libs)**
* Used for file conversion to QOA.

## Compiling

Call `make` to build `qoaconv` and `qoaplay`. By default `qoaconv` is compiled 
without MP3 and FLAC support. 

To compile `qoaconv` with MP3 and FLAC support, download the 
[dr_*.h files](https://github.com/mackron/dr_libs) and pass `HAS_DRLIBS=true`
to make:

```bash
curl https://raw.githubusercontent.com/mackron/dr_libs/refs/heads/master/dr_mp3.h -o dr_mp3.h
curl https://raw.githubusercontent.com/mackron/dr_libs/refs/heads/master/dr_flac.h -o dr_flac.h
make HAS_DRLIBS=true
```

---

![Repobeats analytics image](https://repobeats.axiom.co/api/embed/c2ac4daf95116f988569aeacbc4d34a373154b21.svg)

---

## Legal
### License
The original source code is licensed under the **MIT License**. Copyright (c) 2023 Dominic Szablewski

Changes to the source code are licensed under the Creative Commons **Attribution-NonCommercial-ShareAlike 4.0 International License (CC BY-NC-SA 4.0).**

This license means:

- **Attribution (BY)**: You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
- **NonCommercial (NC)**: You may not utilize this repo for commercial purposes.
- **ShareAlike (SA)**: If you remix, transform, or build upon the repo, you must distribute your contributions under the same license as the original.

### Libraries
**[dr_libs](https://github.com/mackron/dr_libs)**
- Copyright © 2020m David Reid
- Licensed under the MIT No Attribution License

If you want to use the repo in a commercial application, contact thep3dproject@gmail.com for solutions.
