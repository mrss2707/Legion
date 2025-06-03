 -- Quest 13591 Disturbing Connections
 -- Fix incorrect quest objective to find (32971)Ranger Glynda Nal'Shea
 
 -- Objective: 
 -- Turn in item (46318)Hellscream's Missive that drops from (32862)Jor'kil the Soulripper and gives quest 13591 on use

DELETE FROM `quest_objectives` WHERE `ID`=266049 AND `QuestID`=13591;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `TaskStep`, `Description`, `VerifiedBuild`, `Bugged`) VALUES 
(266049, 13591, 1, 0, 46318, 1, 0, 0, 0, '', 19865, 0);