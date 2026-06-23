# Equal Footing Balance Design

## Philosophy

Equal Footing should still feel like Civ VII. Leaders, civilizations, mementos, units, wonders, policies, and victory paths keep their identity. The mod reduces runaway numbers and abusive stacking rather than deleting mechanics.

## Technical Approach

The local Civ VII install was inspected before authoring changes. The gameplay schema defines:

- `Modifiers(ModifierId, ModifierType, ...)`
- `ModifierArguments(ModifierId, Name, Extra, SecondExtra, Type, Value)`
- `ModifierStrings(Context, ModifierId, Text)`
- `LocalizedText(Language, Tag, Text, Gender, Plurality)`

Most balance changes are SQL updates against `ModifierArguments`. Missing DLC rows simply no-op when a DLC is not enabled.

## First-Pass Leader Changes

- Ada Lovelace: mastery science/culture conversion reduced.
- Augustus: capital production per town reduced.
- Confucius: city growth reduced; specialist science left intact until tests show it is still oppressive.
- Friedrich, Oblique: science per commander commendation reduced.
- Harriet Tubman: espionage efficiency reduced.
- Himiko, Queen of Wa: friendly/helpful leader science reduced.
- Machiavelli: diplomatic action gold reduced.
- Tecumseh: suzerain yields and Dominion scaling reduced where exposed.
- Xerxes, King of Kings: conquest burst yields and settlement gold reduced.

## Mementos

Equal Footing keeps mementos playable and reduces the largest numbers rather than adding custom memento modes. The mod also includes a shell-scope config patch that moves memento legend-path rewards to level 1 and unhides memento frontend rows. Because Civ VII's schema notes that DNA entitlements can govern actual unlocks, this is marked for in-game verification.

## Victory Rebalancing

Victory work focuses on exposed legacy-path scoring and thresholds first:

- Reduce conquest-to-victory snowball values where direct modifier arguments exist.
- Raise or slow overly short VP thresholds when exposed.
- Leave hidden or non-exposed systems untouched until the exact database IDs are verified.

## Better Start Positions

FairStart scaffolds score starts by food, production, fresh water, luxury access, strategic resources, expansion room, natural wonder proximity, coast quality, terrain bias support, independent power proximity, and player spacing.

Better Start Positions is optional for the first Workshop release. The current JS files are safe scoring scaffolds, not active start relocation scripts. The next step is verifying whether Civ VII exposes a stable pre-placement hook for moving starts.

## Workshop Release Scope

- Include the SQL balance files, shell memento unlock patch, text updates, FairStart scoring scaffolds, docs, and testing matrix.
- Do not include AI parity presets, setup-option mode UI, or custom memento modes.
- Before upload, run one base-game smoke test, one all-owned-DLC smoke test, and one multiplayer lobby creation test.
