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

Recommended competitive defaults:

- Strict Competitive: disable mementos in lobby rules if the game exposes that option.
- Equal Footing Rebalance: use this mod's memento number reductions.
- Vanilla: use no memento changes.
- Normalized Attribute Mode: future mode, pending setup option and memento replacement validation.

## FairStart

FairStart scaffolds score starts by food, production, fresh water, luxury access, strategic resources, expansion room, natural wonder proximity, coast quality, terrain bias support, independent power proximity, and player spacing.

TODO: verify whether Civ VII map generation exposes a stable pre-placement hook for moving starts. The current JS files are safe scoring scaffolds, not active start relocation scripts.
