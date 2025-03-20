-- The quest Steady Shot was removed in 7.03

DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` IN (10070, 14007, 14276, 25139);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
(1,10070,0,"","","Deprecated quest: Steady Shot"),
(1,14007,0,"","","Deprecated quest: Steady Shot"),
(1,14276,0,"","","Deprecated quest: Steady Shot"),
(1,25139,0,"","","Deprecated quest: Steady Shot");