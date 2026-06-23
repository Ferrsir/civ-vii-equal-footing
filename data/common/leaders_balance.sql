-- Equal Footing leader balance.
-- Verified target table: ModifierArguments(ModifierId, Name, Value).
-- Missing DLC rows no-op cleanly when that DLC is not enabled.

-- Ada Lovelace: keep mastery loop, reduce conversion snowball.
UPDATE ModifierArguments SET Value = '75'
WHERE ModifierId = 'ADA_LOVELACE_MOD_TECH_MASTERY' AND Name = 'PercentYieldPerTurn';

UPDATE ModifierArguments SET Value = '1'
WHERE ModifierId = 'ADA_LOVELACE_MOD_CIVIC_MASTERY' AND Name = 'Amount';

-- Amina: terrain combat is implemented through ABILITY_AMINA_CHECK_FOR_BIOME.
-- TODO: verify the generated ability modifier ID before reducing +5 to +4.

-- Augustus: reduce wide capital production tempo.
UPDATE ModifierArguments SET Value = '1'
WHERE ModifierId = 'AUGUSTUS_MOD_CAPITAL_PRODUCTION_PER_TOWN' AND Name = 'Amount';

-- Confucius: preserve tall specialist identity, reduce growth compounding.
UPDATE ModifierArguments SET Value = '20'
WHERE ModifierId = 'CONFUCIUS_MOD_CITY_GROWTH' AND Name = 'Percent';

-- Friedrich, Oblique: reduce science per commander commendation.
UPDATE ModifierArguments SET Value = '1'
WHERE ModifierId = 'FRIEDRICH_MOD_COMMENDATION_SCIENCE_YIELD' AND Name = 'Amount';

-- Harriet Tubman: keep espionage identity, reduce action efficiency.
UPDATE ModifierArguments SET Value = '60'
WHERE ModifierId = 'HARRIET_TUBMAN_MOD_ADJUST_ESPIONAGE' AND Name = 'Percent';

-- Himiko, Queen of Wa: reduce lobby-size science scaling.
UPDATE ModifierArguments SET Value = '3'
WHERE ModifierId IN ('HIMIKO_MOD_SCIENCE_BONUS_FRIENDLY', 'HIMIKO_MOD_SCIENCE_BONUS_HELPFUL')
  AND Name = 'Amount';

-- Himiko, High Shaman: smaller science penalty outside celebrations.
UPDATE ModifierArguments SET Value = '-30'
WHERE ModifierId IN ('HIMIKO_ALT_MOD_SCIENCE_PENALTY', 'HIMIKO_ALT_MOD_SCIENCE_PENALTY_CELEBRATION')
  AND Name = 'Percent';

-- Machiavelli: reduce diplomatic gold burst while preserving manipulation/levy identity.
UPDATE ModifierArguments SET Value = '35'
WHERE ModifierId IN ('MACHIAVELLI_MOD_GOLD_ACTION_ACCEPT', 'MACHIAVELLI_MOD_GOLD_ACTION_REJECT')
  AND Name = 'Amount';

UPDATE ModifierArguments SET Value = '2'
WHERE ModifierId = 'MACHIAVELLI_MOD_INFLUENCE' AND Name = 'Amount';

-- Sayyida al Hurra: keep naval espionage identity, reduce district-stationed culture scaling.
UPDATE ModifierArguments SET Value = '1'
WHERE ModifierId = 'SAYYIDA_MOD_STATIONED_ON_DISTRICT_CULTURE' AND Name = 'Amount';

-- Tecumseh: preserve city-state identity, reduce scaling.
UPDATE ModifierArguments SET Value = '1'
WHERE ModifierId IN ('TECUMSEH_MOD_SUZERAIN_FOOD', 'TECUMSEH_MOD_SUZERAIN_PRODUCTION')
  AND Name = 'Amount';

UPDATE ModifierArguments SET Value = '1'
WHERE ModifierId = 'TECUMSEH_MOD_SUZERAIN_MILITARY_VICTORY' AND Name IN ('Amount', 'Points', 'VP');

-- TODO: combat per city-state may need a different effect-level rework if the Amount argument is absent.
UPDATE ModifierArguments SET Value = '1'
WHERE ModifierId = 'TECUMSEH_MOD_SUZERAIN_COMBAT' AND Name = 'Amount';

-- Trung Trac: preserve formal-war science, reduce total boost if exposed as Percent.
UPDATE ModifierArguments SET Value = '15'
WHERE ModifierId LIKE 'TRUNG%FORMAL%SCIENCE%' AND Name = 'Percent';

-- Xerxes, King of Kings: reduce conquest burst and empire gold.
UPDATE ModifierArguments SET Value = '35'
WHERE ModifierId IN ('XERXES_MOD_CULTURE_ON_CAPTURE_SETTLEMENT', 'XERXES_MOD_GOLD_ON_CAPTURE_SETTLEMENT')
  AND Name = 'Amount';

UPDATE ModifierArguments SET Value = '2'
WHERE ModifierId IN ('XERXES_MOD_SETTLEMENT_GOLD', 'XERXES_MOD_CAPTURED_SETTLEMENT_GOLD')
  AND Name = 'Amount';

-- Xerxes, the Achaemenid: trade/road burst IDs vary by DLC patch.
-- TODO: verify exact Achaemenid Xerxes road reward modifier IDs before applying 35 culture / 75 gold per Age.
