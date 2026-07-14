# TALENTLESS – Open Source Repository

There are two versions of TALENTLESS: an open-source version and a closed-source version.

The closed-source version is the full release of TALENTLESS. It contains all 600+ songs and is the version distributed and loaded by users. This version is obfuscated with Luraph to prevent key system bypassing and to allow me to continue profiting from my work.

The open-source version is identical to the closed-source version in every way **except one**: it only includes 10 songs. That is the only difference, and it does not impact how developers or scripters can understand how TALENTLESS works.

Another difference is the absence of the `SONGS` folder. If you look in `MAIN.LUA`, you will notice that song scripts from the gui is fetched via the link `"https://hellohellohell0.com/talentless-raw/SONGS/" .. song.url`. The reason I removed this folder from this open-source repository is because it isn't necessary.

Also, note that when looking through the scripts, all files loaded via URLs from hellohellohell0.com (e.g., `translator.lua`) are identical to the files in this GitHub repository with the same name.

If you're interested in how TALENTLESS functions internally, this repository is for you.

Please make sure to ask for permission before using, modifying, or distributing this code.

---

**If you have any questions, open a ticket in the Discord: https://hellohellohell0.com/discord.**

---

*Copyright (C) 2025 hellohellohell012321*

*LICENSE: GPLv3 applies to all files in this repository.*
