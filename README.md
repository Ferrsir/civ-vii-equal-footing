# Civ VII: Equal Footing

Equal Footing is a Civilization VII multiplayer balance mod foundation. Its rule is:

Keep the fantasy. Keep the mechanic. Nerf the number.

This first implementation uses verified Civ VII database tables and modifier IDs from the local install. It favors SQL `UPDATE`s against `ModifierArguments` so vanilla/DLC mechanics, requirements, trait links, and loading order remain intact.

## Install

Copy this folder into the Civ VII Mods folder used by your install, then enable "Civ VII: Equal Footing" in Additional Content. On this machine, the active scanned folder is `C:\Users\ferri\AppData\Local\Firaxis Games\Sid Meier's Civilization VII\Mods`. The installed folder should be named `civ-vii-equal-footing` and contain `civ-vii-equal-footing.modinfo` at its top level.

## Current Scope

- Rebalanced leaders, civilizations, units, buildings, wonders, traditions/policies, mementos, and victory-related numbers where the local Civ VII database exposes stable IDs.
- Immediate next balance phase: every leader and every civilization by era.
- High-priority leader number tuning for Ada Lovelace, Augustus, Confucius, Friedrich Oblique, Harriet Tubman, Himiko Queen of Wa, Machiavelli, Tecumseh, Xerxes King of Kings, and selected DLC leaders where verified IDs exist.
- First-pass memento tuning for the most dangerous slot, commander XP, city-state, gold, and tradition-scaling mementos.
- Shell-scope config patch that attempts to make all memento rewards available when the mod is enabled.
- Victory pacing adjustments to legacy path scoring and thresholds.
- Age-specific civ, unit, and building files with verified changes where practical and TODOs where the design requires live-game validation.
- FairStart map-script scaffolds for Pangaea and Continents. Better Start Positions remains optional until an active start-placement hook is verified.
- Documentation, changelog, and Workshop upload notes.

## Known Limits

The game install exposes XML database data and SQL schemas, but some systems still need live-game validation. The all-mementos patch updates shell/frontend tables; Civ VII's schema notes that DNA entitlements can govern actual rewards, so this must be checked in-game before release. FairStart currently scores starts only; it does not relocate players yet.

See [BALANCE_DESIGN.md](BALANCE_DESIGN.md), [testing/balance_test_matrix.md](testing/balance_test_matrix.md), and [workshop/WORKSHOP_UPLOAD.md](workshop/WORKSHOP_UPLOAD.md).
