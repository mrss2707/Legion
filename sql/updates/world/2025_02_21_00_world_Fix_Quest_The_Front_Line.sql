 -- Quest 13590 The Front Line
 -- Fix incorrect quest objective to find (33178)Huntress Sandrya Moonfall
 
 -- Objective: 
 -- Turn in item (44985)Shattershield Arrow that was given at quest accept

DELETE FROM `quest_objectives` WHERE `ID`=267435 AND `QuestID`=13590;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `TaskStep`, `Description`, `VerifiedBuild`, `Bugged`) VALUES 
(267435, 13590, 1, 0, 44985, 1, 0, 0, 0, '', 19865, 0);