-- Equal Footing memento unlock attempt.
-- Civ VII exposes memento reward placement through the shell/frontend
-- LegendPathsRewards table. The linked DNA entitlement layer may still need
-- in-game verification, so this intentionally touches only memento rewards.

UPDATE LegendPathsRewards
SET Level = 1
WHERE Reward LIKE 'MEMENTO_%';

UPDATE Mementos
SET Hidden = 0,
    UnlockReason = NULL
WHERE Type LIKE 'MEMENTO_%';
