# Workshop Upload

## Preflight

- Confirm `EqualFooting.modinfo` appears in Additional Content.
- Start one single-player game with base game content only.
- Start one single-player game with all owned DLC enabled.
- Create one multiplayer lobby with the mod enabled.
- Verify mementos are visible/equippable on a profile that has not unlocked all of them.
- Check the database/modding logs for SQL or XML errors.

## Package Contents

- `EqualFooting.modinfo`
- `data/`
- `config/`
- `text/`
- `maps/`
- `README.md`
- `CHANGELOG.md`
- `BALANCE_DESIGN.md`
- `testing/`

## Release Notes Template

Title: Civ VII: Equal Footing

Short description:
Multiplayer-focused balance pass for leaders, civilizations, units, buildings, wonders, traditions/policies, mementos, victory pacing, and optional FairStart scaffolding.

Initial Workshop description:
Equal Footing keeps Civ VII's mechanics intact while reducing runaway numbers and abusive multiplayer stacking. This release focuses on balance data that is exposed in the local game database, plus an experimental all-mementos unlock patch that needs live profile verification.

## Upload Steps

- Copy or package the repository contents into the Civ VII mod upload folder expected by the Workshop uploader.
- Use the title `Civ VII: Equal Footing`.
- Include the release notes from `CHANGELOG.md`.
- Mark the first upload as beta/experimental until the memento unlock and FairStart behavior are verified in-game.
