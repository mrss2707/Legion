-- Adds the 11 primary professions to a new player on login
-- I use CloudyTradeSkill addon, slightly modded, to access all 11.
-- Commit d60b8ae keeps the server from removing any primary professions over 2, but maintains the config max.

DELETE FROM `playercreateinfo_spell` WHERE `race` = 0 AND `class` = 0 AND `Spell` IN 
(2275, 2020, 7414, 4039, 45375, 25245, 2155, 3911, 2372, 2581, 8615);
INSERT INTO `playercreateinfo_spell` (`race`, `class`, `Spell`, `Note`) VALUES 
(0, 0, 2275, 'Alchemy Rank 1'),
(0, 0, 2020, 'Blacksmithing Rank 1'),
(0, 0, 7414, 'Enchanting Rank 1'),
(0, 0, 4039, 'Engineering Rank 1'),
(0, 0, 45375, 'Inscription Rank 1'),
(0, 0, 25245, 'Jewelecrafting Rank 1'),
(0, 0, 2155, 'Leatherworking Rank 1'),
(0, 0, 3911, 'Tailoring Rank 1'),
(0, 0, 2372, 'Herbalism Rank 1'),
(0, 0, 2581, 'Mining Rank 1'),
(0, 0, 8615, 'Skinning Rank 1');