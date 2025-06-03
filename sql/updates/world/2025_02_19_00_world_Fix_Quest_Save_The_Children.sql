 -- Quest 14368 Save the Children!
 -- Objectives: 
 -- Cynthia rescued (36287)
 -- Ashley rescued	(36288)
 -- James rescued	(36289)

 -- Cynthia smart ai
SET @ENTRY := 36287;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On player opened gossip - Gossip player: Close gossip'),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 84, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On player opened gossip - Gossip player: Talk 0'),
(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 33, @ENTRY, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On player opened gossip - Loot recipient: Give kill credit James (36289)'),
(@ENTRY, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 67, 1, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'On player opened gossip - Trigger timed event timedEvent[1] in 3000 - 3000 ms // -meta_wait'),
(@ENTRY, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 67, 2, 8000, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'On player opened gossip - Trigger timed event timedEvent[2] in 8000 - 8000 ms // -meta_wait'),
(@ENTRY, 0, 5, 0, 59, 0, 100, 0, 1, 0, 0, 0, 84, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On timed event timedEvent[1] triggered - Self: Talk 1'),
(@ENTRY, 0, 6, 0, 59, 0, 100, 0, 2, 0, 0, 0, 41, 10000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On timed event timedEvent[2] triggered - Self: Despawn instantly respawn in 10 seconds');

 -- Cynthia conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceGroup` = 1 AND `SourceEntry` = @ENTRY;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, @ENTRY, 0, 0, 9, 0, 14368, 0, 0, 0, 0, '', 'Smart - Only If Player Has Quest'),
(22, 1, @ENTRY, 0, 0, 41, 0, 14368, @ENTRY, 1, 1, 0, '', 'Smart - If Player Not Complete Obj');

 -- Cynthia creature text
DELETE FROM `creature_text` WHERE `Entry` = @ENTRY;
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(@ENTRY, 0, 0, 'Join the others inside the basement next door.  Hurry!', 12, 0, 100, 0, 0, 0, 36331, 77101, 77101, 0, 'Player to Cynthia'),
(@ENTRY, 1, 0, 'I am afraid of you! Where is my mom?', 12, 0, 100, 0, 0, 0, 36325, 302969, 302969, 0, 'Cynthia to Player');

 -- Ashley smart ai
SET @ENTRY := 36288;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On player opened gossip - Gossip player: Close gossip'),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 84, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On player opened gossip - Gossip player: Talk 0'),
(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 33, @ENTRY, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On player opened gossip - Loot recipient: Give kill credit James (36289)'),
(@ENTRY, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 67, 1, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'On player opened gossip - Trigger timed event timedEvent[1] in 3000 - 3000 ms // -meta_wait'),
(@ENTRY, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 67, 2, 8000, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'On player opened gossip - Trigger timed event timedEvent[2] in 8000 - 8000 ms // -meta_wait'),
(@ENTRY, 0, 5, 0, 59, 0, 100, 0, 1, 0, 0, 0, 84, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On timed event timedEvent[1] triggered - Self: Talk 1'),
(@ENTRY, 0, 6, 0, 59, 0, 100, 0, 2, 0, 0, 0, 41, 10000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On timed event timedEvent[2] triggered - Self: Despawn instantly respawn in 10 seconds');

 -- Ashley conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceGroup` = 1 AND `SourceEntry` = @ENTRY;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, @ENTRY, 0, 0, 9, 0, 14368, 0, 0, 0, 0, '', 'Smart - Only If Player Has Quest'),
(22, 1, @ENTRY, 0, 0, 41, 0, 14368, @ENTRY, 1, 1, 0, '', 'Smart - If Player Not Complete Obj');

 -- Ashley creature text
DELETE FROM `creature_text` WHERE `Entry` = @ENTRY;
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES 
(@ENTRY, 0, 0, 'It''s not safe here.  Go to the Allens'' basement.', 12, 0, 100, 0, 0, 0, 36329, 115352, 115352, 0, 'Player to Ashley'),
(@ENTRY, 1, 0, 'I am afraid of you! Where is my mom?', 12, 0, 100, 0, 0, 0, 36326, 164094, 164094, 0, 'Ashley to Player');

 -- James smart ai
SET @ENTRY := 36289;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On player opened gossip - Gossip player: Close gossip'),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 84, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On player opened gossip - Gossip player: Talk 0'),
(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 33, @ENTRY, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On player opened gossip - Loot recipient: Give kill credit Forest Spider (30)'),
(@ENTRY, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 67, 1, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'On player opened gossip - Trigger timed event timedEvent[1] in 3000 - 3000 ms // -meta_wait'),
(@ENTRY, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 67, 2, 8000, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'On player opened gossip - Trigger timed event timedEvent[2] in 8000 - 8000 ms // -meta_wait'),
(@ENTRY, 0, 5, 0, 59, 0, 100, 0, 1, 0, 0, 0, 84, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On timed event timedEvent[1] triggered - Self: Talk 1'),
(@ENTRY, 0, 6, 0, 59, 0, 100, 0, 2, 0, 0, 0, 41, 10000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On timed event timedEvent[2] triggered - Self: Despawn instantly respawn in 10 seconds');

 -- James conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceGroup` = 1 AND `SourceEntry` = @ENTRY;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, @ENTRY, 0, 0, 9, 0, 14368, 0, 0, 0, 0, '', 'Smart - Only If Player Has Quest'),
(22, 1, @ENTRY, 0, 0, 41, 0, 14368, @ENTRY, 1, 1, 0, '', 'Smart - If Player Not Complete Obj');

 -- James creature text
DELETE FROM `creature_text` WHERE `Entry` = @ENTRY;
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
(36289, 0, 0, 'Your mother''s in the basement next door. Get to her now!', 12, 0, 100, 0, 0, 0, 36328, 91163, 91163, 0, 'Player to James'),
(36289, 1, 0, 'Don''t hurt me! I was just looking for my sisters! I believe Ashley is there in the house!', 12, 0, 100, 0, 0, 0, 36324, 62265, 62265, 0, 'James to Player');
