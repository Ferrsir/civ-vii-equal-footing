-- Antiquity unit balance.

-- Reduce generic early tech combat spike slightly.
UPDATE ModifierArguments SET Value = '2'
WHERE ModifierId IN (
  'AQ_TECH_INFANTRY_MOD_COMBAT_STRENGTH',
  'AQ_TECH_NAVAL_MOD_COMBAT_STRENGTH',
  'AQ_TECH_RANGED_MOD_COMBAT_STRENGTH',
  'AQ_TECH_SIEGE_MOD_COMBAT_STRENGTH'
) AND Name = 'Amount';

-- Slightly tone down Dhow coast combat harassment.
UPDATE ModifierArguments SET Value = '3'
WHERE ModifierId = 'DHOW_MOD_COMBAT_COAST' AND Name = 'Amount';

-- Keep Legion tradition identity, but reduce per-tradition combat if fractional combat is unsupported.
-- TODO: test whether Value='0.5' is accepted by EFFECT_ADJUST_UNIT_CIV_UNIQUE_TRADITION_COMBAT_MODIFIER.
