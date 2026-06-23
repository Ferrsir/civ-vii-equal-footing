# Civ VII: Equal Footing

Equal Footing is a Civilization VII multiplayer balance mod foundation. Its rule is:

Keep the fantasy. Keep the mechanic. Nerf the number.

This first implementation uses verified Civ VII database tables and modifier IDs from the local install. It favors SQL `UPDATE`s against `ModifierArguments` so vanilla/DLC mechanics, requirements, trait links, and loading order remain intact.

## Install

Copy this folder into the Civ VII Mods folder used by your install, then enable "Civ VII: Equal Footing" in Additional Content.

## Current Scope

- High-priority leader number tuning for Ada Lovelace, Augustus, Confucius, Friedrich Oblique, Harriet Tubman, Himiko Queen of Wa, Machiavelli, Tecumseh, Xerxes King of Kings, and selected DLC leaders where verified IDs exist.
- First-pass memento tuning for the most dangerous slot, commander XP, city-state, gold, and tradition-scaling mementos.
- Victory pacing adjustments to legacy path scoring and thresholds.
- Age-specific civ/unit files with verified changes where practical and TODOs where the design requires live-game validation.
- FairStart map-script scaffolds for Pangaea and Continents.

## Known Limits

The game install exposes XML database data and SQL schemas, but live setup-option wiring for custom memento/AI presets needs in-game UI verification. Those options are documented and scaffolded, not fully wired into the shell.

See [BALANCE_DESIGN.md](BALANCE_DESIGN.md) and [testing/balance_test_matrix.md](testing/balance_test_matrix.md).
