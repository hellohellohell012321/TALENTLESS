# TALENTLESS – Source-Available Repository

There are two versions of TALENTLESS: a limited source-available version (this repository) and a closed-source version.

The closed-source version is the full release of TALENTLESS. It contains all 600+ songs and is the version distributed and loaded by users. This version is obfuscated with Luraph to prevent key system bypassing and to allow me to continue profiting from my work.

This repository is identical to the closed-source version in every way **except one**: it only includes 10 songs. That is the only difference, and it does not impact how developers or scripters can understand how TALENTLESS works.

Another difference is the absence of the `SONGS` folder. If you look in `MAIN.LUA`, you will notice that song scripts from the gui are fetched via the link `"https://hellohellohell0.com/talentless-raw/SONGS/" .. song.url`. The reason I removed this folder from this repository is because it isn't necessary.

Also, note that when looking through the scripts, all files loaded via URLs from hellohellohell0.com (e.g., `translator.lua`) are identical to the files in this GitHub repository with the same name.

If you're interested in how TALENTLESS functions internally, this repository is for you to **view and study**.

## License

This code is **not open source**. It is provided for viewing and personal, non-commercial study only. You may **not** use, modify, distribute, or create derivative works from this code — in whole or in part — without prior written permission.

See the [LICENSE](./LICENSE) file for full terms.

## Requesting permission

If you'd like to use, modify, or distribute any part of this code, open a ticket in the Discord: https://hellohellohell0.com/discord

---

*Copyright (C) 2026 hellohellohell012321. All Rights Reserved.*
