-- Equal Footing memento balance.
-- Design default: all mementos stay playable, but runaway numbers are reduced.
-- Unlocking all mementos is handled in config/unlock_all_mementos.sql.

-- Corpus Juris Civilis: extra policy slots are universal power.
-- TODO: verify whether slot count can be reduced without breaking equip rules.

-- City-state tempo.
UPDATE ModifierArguments SET Value = '40'
WHERE ModifierId = 'MEMENTO_FOUNDATION_SHISA_NECKLACE_MODIFIER' AND Name = 'Amount';

-- Commander XP and respawn snowball.
UPDATE ModifierArguments SET Value = '35'
WHERE ModifierId LIKE 'MEMENTO_FOUNDATION_ART_OF_WAR_MODIFIER%' AND Name = 'Percent';

UPDATE ModifierArguments SET Value = '-35'
WHERE ModifierId = 'MEMENTO_FOUNDATION_EQUESTRIAN_FIGURE_MODIFIER' AND Name = 'Percent';

-- Large flat/per-age gold mementos.
UPDATE ModifierArguments SET Value = '300'
WHERE ModifierId = 'MEMENTO_FOUNDATION_SWORD_BRENNUS_MODIFIER_1' AND Name = 'Amount';

UPDATE ModifierArguments SET Value = '150'
WHERE ModifierId = 'MEMENTO_FOUNDATION_LYDIAN_LION_MODIFIER' AND Name = 'Amount';

-- Trade route range is useful but should not force a universal pick.
UPDATE ModifierArguments SET Value = '4'
WHERE ModifierId IN ('MEMENTO_FOUNDATION_POCHTECA_BACKPACK_MODIFIER_1', 'MEMENTO_FOUNDATION_POCHTECA_BACKPACK_MODIFIER_2')
  AND Name = 'Amount';

-- Machiavelli mementos: reduce sanction/reject scaling.
UPDATE ModifierArguments SET Value = '35'
WHERE ModifierId = 'MEMENTO_MACHIAVELLI_DISCORSI_SOPRA_LIVIO_MODIFIER' AND Name = 'Percent';

UPDATE ModifierArguments SET Value = '2'
WHERE ModifierId = 'MEMENTO_MACHIAVELLI_DELL_ARTE_DELLA_GUERRA_MODIFIER' AND Name = 'Amount';

-- Lafayette tradition scaling: keep identity, reduce non-unique tradition boost.
UPDATE ModifierArguments SET Value = '1'
WHERE ModifierId = 'MEMENTO_LAFAYETTE_LETTER_ADRIENNE_MODIFIER_2' AND Name = 'Amount';

UPDATE ModifierArguments SET Value = '1'
WHERE ModifierId IN ('MEMENTO_LAFAYETTE_TRICOLOUR_COCKADE_MODIFIER_1', 'MEMENTO_LAFAYETTE_TRICOLOUR_COCKADE_MODIFIER_2')
  AND Name = 'Amount';

-- Natural wonder mementos stay mostly intact; FairStart should handle start-lottery abuse.

-- High-priority named mementos not patched here need exact ID verification:
-- Punch Cards, Note G, Bifocals, Brush and Scroll, Lantern, Golden Seal Stone,
-- Yasakani no Magatama, The Rihla, Potemkin's Sword-Knot, Poteskwate, Wampum Belt.
