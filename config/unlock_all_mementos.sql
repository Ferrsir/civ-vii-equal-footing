-- Equal Footing memento visibility patch.
-- Memento ownership/equip eligibility is driven by Online.Metaprogression
-- and DNA entitlements. Do not rewrite LegendPathsRewards levels here:
-- that table has foreign keys to defined legend-path levels and will roll
-- back the entire shell action if pointed at missing level rows.

UPDATE Mementos
SET Hidden = 0,
    UnlockReason = NULL
WHERE Type LIKE 'MEMENTO_%';
