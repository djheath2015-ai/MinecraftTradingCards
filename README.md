# Minecraft Trading Cards — Fabric 26.3

An original Minecraft Java trading-card mod project for DJ, built for the Fabric loader and intended for CurseForge distribution.

## Included in this build
- 12 collectible mob cards: Creeper, Zombie, Skeleton, Enderman, Spider, Slime, Wolf, Iron Golem, Blaze, Warden, Wither and Ender Dragon.
- Right-click booster packs that award five random cards.
- Six rarity tiers: Common, Uncommon, Rare, Epic, Legendary and Mythic.
- Rarity-coloured custom card names.
- `/cards album` inventory collection summary.
- `/cards duel <player>` compares the total base power of cards held by two players.
- `/cards help` explains the commands.
- Cards can be traded manually by dropping them for another player to pick up.
- Original pixel-art textures, item models, client item definitions and English names.

## Target toolchain
- Minecraft Java 26.3 (stable)
- Fabric Loader 0.20.1
- Fabric API 0.165.0+26.3
- Fabric Loom 1.19-SNAPSHOT
- Java 25

Versions are based on the Fabric 26.3 example project and development page. The project has not been compiled or tested in Minecraft in this environment. A Java 25 installation is required; this environment only has Java 21, so no ready-to-install JAR is included.

## Build it
1. Install Java 25 (JDK).
2. Install IntelliJ IDEA Community Edition or another Gradle-capable Java IDE.
3. Open this folder as a Gradle project and allow Gradle to sync.
4. Run the Gradle task `build`.
5. Find the remapped mod JAR in `build/libs/`.
6. In the CurseForge app, create a Minecraft Java profile using Minecraft 26.3 and Fabric, then put the JAR in that profile's `mods` folder. Add the matching Fabric API dependency to the profile.

To publish publicly, create a CurseForge project and submit the built JAR for review. Do not upload this source ZIP as if it were the mod JAR.

## In-game use
- Get a Card Pack from the Creative inventory's Ingredients tab.
- Right-click it to receive five cards.
- Run `/cards album` to see your collection.
- With another player online, run `/cards duel TheirPlayerName` (using the command's player selector completion) to compare deck power.
- Drop a card item to trade it with another player.

## Current scope
This is a playable first complete-feature prototype: pack opening, card items, rarities, inventory collection, simple deck-power duels and manual trading are implemented in source. It does not yet have a graphical binder screen, animated battle board, automated secure trade window, card artwork per individual mob beyond item icons, or saved collection database outside the player's inventory. Those would be the next major development pass.

This project is not affiliated with Mojang, Microsoft, Joll or Conk. All mod code and card names here are original Minecraft-inspired content.


## Build the JAR from an iPad using GitHub Actions

See `GITHUB-CLOUD-BUILD-ON-IPAD.md`. The included workflow builds remotely with Java 25 and Gradle 9.7.1, then publishes the compiled JAR as a downloadable Actions artifact. A JAR does not exist until that remote build succeeds.
