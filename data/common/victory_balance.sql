-- Equal Footing competitive victory pacing.
-- Verified tables: ModifierArguments and RequirementArguments.

-- Reduce conquest VP snowball relative to non-conquest while preserving Military pressure.
UPDATE ModifierArguments SET Value = '1'
WHERE ModifierId LIKE 'VICTORY_%_MILITARY_CONQUEST_SCORING' AND Name = 'VP';

-- Slightly increase military settlement VP requirements where exposed.
UPDATE RequirementArguments SET Value = CAST(CAST(Value AS INTEGER) + 2 AS TEXT)
WHERE RequirementId LIKE 'REQ_VICTORY_%_MILITARY%VP%' AND Name = 'VPNeeded';

-- Cultural: captured/conquest wonder tourism needs a separate verified modifier.
-- TODO: locate captured-wonder tourism scoring effect before changing Modern Culture.

-- Economic: raise resource/GDP point requirement modestly where exposed.
UPDATE RequirementArguments SET Value = CAST(CAST(Value AS INTEGER) + 3 AS TEXT)
WHERE RequirementId LIKE 'REQ_VICTORY_%_RESOURCE_VP' AND Name = 'VPNeeded';

-- Scientific: leave Great Library / space-race requirements intact for first release;
-- leader and memento science snowballs are reduced upstream.
