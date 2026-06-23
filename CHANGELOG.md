# Changelog

## 0.1.4

- Changed the root modinfo `version` attribute to integer `1` so Civ VII does not parse the module version as `0`.
- Added late load order to Equal Footing action groups so balance/text overrides apply after base and DLC content.

## 0.1.3

- Renamed the modinfo file to `civ-vii-equal-footing.modinfo` so the file, folder, and mod id can match in the installed package.
- Cleaned the local install package plan so only mod files are copied, not repository internals or stale deleted scaffolds.

## 0.1.2

- Changed mod browser metadata to plain visible fields so Add-ons can show the module without depending on localized title lookup.
- Added explicit `ShowInBrowser`, `AffectsSavedGames`, and package/version properties matching known visible local mods.

## 0.1.1

- Narrowed the mod scope to balance changes, memento unlock/rebalance, victory rebalancing, documentation, Workshop prep, and optional Better Start Positions.
- Removed AI parity and custom setup-option/memento-mode scaffolding from the mod package.
- Added shell-scope config SQL that attempts to move all memento rewards to level 1 and unhide memento frontend rows.
- Added Workshop upload checklist documentation.

## 0.1.0

- Added Equal Footing modinfo with game and shell action groups.
- Added modular SQL balance files using verified Civ VII tables.
- Added high-priority first-pass leader, memento, victory, unit, and civ balance changes.
- Added English module text and balance tooltip overrides.
- Added FairStart Pangaea and Continents scaffolds.
- Added testing matrices for leaders, civs, mementos, and victories.
