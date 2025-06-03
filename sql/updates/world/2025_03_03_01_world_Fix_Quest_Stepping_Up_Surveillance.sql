 -- Fix quest Stepping Up Surveillance (13948)
 -- No area trigger was enabled
 
DELETE FROM `areatrigger_template` WHERE `entry` = 5455;
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES 
(5455, 0, 0, 0, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Doomspeaker Tevellion');

DELETE FROM `areatrigger_scripts` WHERE `entry` = 5455;
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES 
(5455, 'SmartTrigger');

 -- Player uses item Panther Figurine that casts spell On The Prowl (65426)
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 5455;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 5455, 2, 0, 1, 0, 65426, 0, 0, 0, 0, '', 'Smart - If Player has aura 65426'),
(22, 1, 5455, 2, 0, 9, 0, 13948, 0, 0, 0, 0, '', 'Smart - If Player has Quest');


DELETE FROM `smart_scripts` WHERE `entryorguid` = 5455 AND `source_type` = 2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(5455, 2, 0, 0, 46, 0, 100, 0, 5455, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 122359, 34326, 0, 0, 0, 0, 0, 'Areatrigger Doomspeaker Trevellion - On Trigger - Set Data');
