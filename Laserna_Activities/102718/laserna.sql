CREATE DATABASE `laserna`;
USE `laserna`;
CREATE TABLE `authors` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `first_name` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL
);

CREATE TABLE `books` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `title` VARCHAR(255) NOT NULL,
    `pages` INT NOT NULL,
    `author_id` INT,
    FOREIGN KEY (`author_id`)
        REFERENCES `authors`(`id`)
);
INSERT INTO `authors`(`first_name`, `last_name`)
VALUES
    ('1YFJB', 'dYxaY'),
    ('5M7TE', 'VIbBU'),
    ('1DjSP', 'FXFDx'),
    ('jBBRo', '4MUmZ'),
    ('t3LHn', 'R4X6g'),
    ('obYZj', 'l71D7'),
    ('4a9Dq', '744BR'),
    ('BbNXZ', '5Llaz'),
    ('TWGSu', 'Y7qYm'),
    ('4kFsd', 'lXye3'),
    ('Jv4b6', 'h4BjC'),
    ('2S7q8', 'FMxR2'),
    ('qbybG', 'QemDW'),
    ('LB42J', 'eyvLB'),
    ('gHRHy', 'YaWZ6'),
    ('yF4Hd', 'LFlv7'),
    ('xaXkE', 'DG11Q'),
    ('knK7r', 'OUCBg'),
    ('fMFrU', 'lUolY'),
    ('fVZkA', 'YQ3TB'),
    ('20sfO', 'Lvl2M'),
    ('t5MKc', 'XIwDM'),
    ('WuP5p', 'iGyjJ'),
    ('FhYSQ', 'TuCPL'),
    ('sK7Xs', 'MzUxP'),
    ('QofJP', 'PNYym'),
    ('I6iWf', 'v5qDO'),
    ('werQo', 'GkzRC'),
    ('vIr8s', '8VtAz'),
    ('a8Y4F', 'Kpryc'),
    ('qRXSS', 'GeoUc'),
    ('gOCVn', 'woRMT'),
    ('lzuQb', 'vTXEF'),
    ('00i4y', 'fJReB'),
    ('QNygj', 'U3Vux'),
    ('F9xqb', 'cp7a2'),
    ('DrUYH', 'Vw6n3'),
    ('U10iD', 'bBu4N'),
    ('pktW0', 'AgCjr'),
    ('CeQRi', '7WtM0'),
    ('MAbrk', 'QjTcQ'),
    ('86Lpm', '2RMuY'),
    ('3USnD', 'oygVm'),
    ('TR3Ta', 'SEGau'),
    ('w9Z87', 'Lunza'),
    ('gf0r7', 'ZjaKr'),
    ('h9YFE', 'ebbR7'),
    ('BEW28', 'CmCZa'),
    ('XHepB', 'eOtsP'),
    ('NPAXU', 'yjkeR'),
    ('rF7fV', 'GGMu9'),
    ('R0hIC', 'W2p8K'),
    ('u89k7', 'xM7YZ'),
    ('pXkjA', 'rRQfl'),
    ('FgAvG', 'sandp'),
    ('mB4T7', 'w5fbg'),
    ('XxWQK', 'n1wIh'),
    ('zkM00', 'Ou4Kd'),
    ('zOaEX', 'z6Lfz'),
    ('lmaja', '1gHQ3'),
    ('S0LnM', 'vsRQE'),
    ('5FeRr', 'LpPmh'),
    ('42kGk', 'd2Yai'),
    ('37rMn', 'RBwBH'),
    ('M77YO', 'NWuKg'),
    ('c4Yve', '0xLzc'),
    ('2sjTl', 'eCMzo'),
    ('yXYex', 'q6cYt'),
    ('wYJuw', 'Pbbp7'),
    ('VCmh2', 'bwLdS'),
    ('YukUy', 'yCv8m'),
    ('75f0b', 'FLItR'),
    ('eBTOj', 'JgJ8Q'),
    ('klRI0', 'LKPfZ'),
    ('mmgA4', 'bPHLh'),
    ('DErqr', 'xgTOP'),
    ('Jjrmi', '1qpNu'),
    ('whP6H', 'CBkMA'),
    ('LVUer', 'YAuOI'),
    ('rtYhA', '7XMUO'),
    ('Mmvls', '1oc80'),
    ('LBNdl', '4rh8Q'),
    ('7IOvZ', 'lZ1kD'),
    ('JvRLn', '9tFnE'),
    ('UipGV', 'Li4AN'),
    ('W7vXW', 'OqhMv'),
    ('l8Gb7', 'qfNX7'),
    ('4FvA7', 'nK5XD'),
    ('p5C1q', 'GUYHx'),
    ('Cua6b', 'xqyh8'),
    ('i6Pd4', 'SPQWM'),
    ('fwnI4', 'BU55D'),
    ('HZwWt', 'IvHq8'),
    ('fmg1a', 'Rp4rJ'),
    ('LmmbH', 'HJThc'),
    ('v1Vnn', 'LzfPB'),
    ('conYc', 'EwLUO'),
    ('GZoYK', 'I3Mhg'),
    ('F3TXr', 'eFnDi'),
    ('DVCM3', 'opnxv'),
    ('IlrPp', 'fKMRm'),
    ('DPHO5', 'lEPhM'),
    ('ZFEXm', 'o3Cbn'),
    ('AhU2L', 'gNzTt'),
    ('0B2bA', '3jqbJ'),
    ('BS5E0', 'oVaxT'),
    ('4HqQY', 'YYliR'),
    ('xFngE', 'UXQMi'),
    ('MBKNQ', 'aSib6'),
    ('nVfkR', 'GLQ8T'),
    ('417VJ', 'QACUb'),
    ('zNU4i', 'ValwQ'),
    ('txwgh', 'fHZ7v'),
    ('1NzcJ', 's6rUW'),
    ('0sxcO', 'RZUti'),
    ('2Nn4n', 'DhPzG'),
    ('cyiNs', 'KqJmx'),
    ('wFBJw', 'q0jhe'),
    ('yDgAo', 'fjZkq'),
    ('1Q9Kj', 'SC1kq'),
    ('bdgpz', 'Xwi6b'),
    ('KpBYh', 'Tjggx'),
    ('NRrer', 'tpWZv'),
    ('GuNoV', 'bb4Bo'),
    ('rHtWz', 'sQTRs'),
    ('KZnKM', 'at2lo'),
    ('o3NJg', 'yaaiF'),
    ('Fe70J', 'jz1mx'),
    ('zi8rr', 'lbBOX'),
    ('9daQP', 'lIdUU'),
    ('1NPuD', 'LumUV'),
    ('4100H', 'Ioff5'),
    ('sTtIp', 'q9h5H'),
    ('ysWAx', 'Z1Mks'),
    ('8Cu6b', '5q7Vq'),
    ('FOktW', 'NZCAn'),
    ('KI3wK', 'nXt7P'),
    ('wgqzi', 'GDXLM'),
    ('wSg3x', 'HA10U'),
    ('A70yT', 'yPxBD'),
    ('5eRry', 'mYqww'),
    ('4cyhZ', 'I5XMz'),
    ('IS4ji', 'qSn0l'),
    ('Os4el', 'qUr4i'),
    ('5IjEH', 'Vkrlq'),
    ('bSVAf', '5ut76'),
    ('Dq3pe', 'mxvm8'),
    ('azrCB', 'WepUC'),
    ('fEqlc', 'tQ0qk'),
    ('T2naN', 'r1frs'),
    ('UH5Ab', '4FNgk'),
    ('KfNQJ', 'wDIlh'),
    ('b7hhc', 'Z4aiv'),
    ('uFjRm', 'FSPal'),
    ('mds4r', 'iQfEy'),
    ('faVGp', 'dxr8W'),
    ('QLg5G', 'IFpUc'),
    ('5uQSN', '7xHXt'),
    ('wKs40', 'FnaCf'),
    ('vR8Nl', 'mMm4j'),
    ('jJyAJ', 'SrbrO'),
    ('BKfPb', 'Cnuiv'),
    ('u8EEZ', 'PpH1Q'),
    ('WSPal', '4IQdH'),
    ('RicEY', 'lZFYK'),
    ('Xqiu7', '6AV55'),
    ('etcU6', '3msWl'),
    ('z43pu', 'yF0rx'),
    ('yArBG', 'oT5ZC'),
    ('217oX', 'gnQai'),
    ('aMG4d', 'Qgt45'),
    ('277Qa', 'oxuD3'),
    ('zsbh1', 'xZ7Dd'),
    ('v4SLk', '6ZjJ9'),
    ('Cj7HW', '1zvfP'),
    ('p25eG', 'Bztqx'),
    ('4Tybi', 'mJqUp'),
    ('kfbaE', '6SWug'),
    ('DUUCO', 'GO6kZ'),
    ('SnzXQ', 'h5d37'),
    ('4xsKs', '8BfhC'),
    ('nbLPV', 'T3QEF'),
    ('58fbe', 'RpfO8'),
    ('Tk8xj', 'jWInm'),
    ('rGntY', 'tpgSE'),
    ('ILR9Z', 'uijKP'),
    ('zWJfk', 'BxQJS'),
    ('8N3Nu', 'MpX0r'),
    ('aO4M0', 'BwwMM'),
    ('2DaVz', 'MWOyX'),
    ('NNHKU', 'ZGnlr'),
    ('uf5Mu', 'oi6Pm'),
    ('gcnRO', '2sd4p'),
    ('uGKs6', 'Fbuyn'),
    ('M3A2p', 'A9uPi'),
    ('jCuFI', '1YFEm'),
    ('4gGQ5', 'zDozl'),
    ('04JcX', 'pD5Ct'),
    ('4UxPD', '3R6XQ'),
    ('cJFh6', 'NajSG')
;
INSERT INTO `books`(`title`, `pages`, `author_id`)
VALUES
    ('GfgyS', 18, 163),
    ('tTfU2', 61, 134),
    ('wkPb2', 28, 38),
    ('6rtL2', 69, 181),
    ('JdATb', 0, 191),
    ('QSFhX', 86, 176),
    ('ltFvh', 96, 11),
    ('FxH6N', 38, 136),
    ('0bJUi', 47, 39),
    ('lxcH4', 97, 18),
    ('RWIWW', 85, 125),
    ('Qoo99', 14, 161),
    ('PHBFn', 35, 142),
    ('hlF2s', 81, 164),
    ('ekO5N', 51, 177),
    ('fSJU2', 33, 167),
    ('GZ2hU', 1, 199),
    ('u3Ysx', 77, 69),
    ('vUimr', 20, 179),
    ('ghHhJ', 70, 40),
    ('VPwni', 60, 52),
    ('0kgUx', 38, 34),
    ('hwboy', 19, 153),
    ('8w5Oe', 54, 37),
    ('UVfvt', 56, 115),
    ('UnCke', 6, 56),
    ('f7gvu', 100, 125),
    ('X5Dn9', 59, 100),
    ('gnf2w', 32, 70),
    ('o1Wgb', 17, 71),
    ('5ecB6', 80, 158),
    ('pJpym', 60, 33),
    ('d4ma5', 81, 63),
    ('wobpw', 82, 73),
    ('Nswbk', 31, 9),
    ('oiYiB', 24, 3),
    ('fKtrm', 34, 104),
    ('VnXox', 92, 147),
    ('guI9O', 91, 17),
    ('hlzNO', 72, 92),
    ('OJJtx', 64, 72),
    ('4HNFM', 77, 99),
    ('MvgWI', 44, 104),
    ('R2KWy', 6, 155),
    ('JVBAM', 56, 109),
    ('MQLAO', 63, 152),
    ('DnuMd', 49, 136),
    ('j5s58', 65, 112),
    ('hfWyi', 86, 115),
    ('thEgr', 74, 188),
    ('Lkogf', 13, 45),
    ('vFPDN', 99, 41),
    ('eBiwa', 55, 37),
    ('tiCna', 36, 108),
    ('Rk2Wq', 39, 91),
    ('u8wKz', 4, 26),
    ('sqUK0', 3, 177),
    ('1cjY3', 89, 104),
    ('qzzgS', 41, 151),
    ('7z865', 48, 56),
    ('wYUv4', 71, 79),
    ('u6bQK', 83, 58),
    ('42nup', 73, 72),
    ('Ms0ub', 30, 60),
    ('tIWh2', 69, 65),
    ('mfH8K', 10, 49),
    ('vtBOh', 70, 9),
    ('hQvPb', 52, 94),
    ('MLSYr', 72, 40),
    ('o37dn', 84, 146),
    ('nTS2j', 51, 123),
    ('pCUTc', 89, 65),
    ('WPYxw', 90, 61),
    ('2D5Qm', 22, 181),
    ('Q84Zy', 89, 177),
    ('2pj1c', 31, 155),
    ('vk8mQ', 20, 167),
    ('T8xPO', 32, 82),
    ('9IIHt', 58, 159),
    ('NVDgA', 87, 121),
    ('s3SQh', 25, 115),
    ('i9m3Y', 57, 26),
    ('wVlFK', 64, 110),
    ('Mlxqe', 41, 88),
    ('OIvlL', 6, 122),
    ('scFmf', 9, 31),
    ('ZILKt', 15, 84),
    ('oIUts', 5, 97),
    ('ThoH1', 73, 146),
    ('m7uiq', 72, 163),
    ('SHKgK', 74, 6),
    ('jQOaa', 9, 66),
    ('Drk8C', 8, 9),
    ('ULEZC', 82, 168),
    ('xsELM', 6, 20),
    ('d90bo', 74, 147),
    ('hR13s', 40, 81),
    ('FmNHB', 14, 56),
    ('jABhL', 76, 11),
    ('1ryXC', 10, 58),
    ('83m9u', 100, 55),
    ('Na63y', 97, 35),
    ('AskFs', 53, 3),
    ('nJOMa', 32, 30),
    ('5MUMI', 2, 93),
    ('kw6Op', 69, 122),
    ('VmBKg', 24, 154),
    ('MFfcS', 82, 130),
    ('pZCNk', 81, 101),
    ('pEiok', 96, 151),
    ('Txbnb', 76, 95),
    ('ARxwU', 19, 25),
    ('G9uHe', 64, 132),
    ('y0KEc', 45, 88),
    ('ODBuJ', 28, 13),
    ('HRDgE', 53, 144),
    ('7fdEo', 5, 28),
    ('p8EBe', 43, 149),
    ('qnB9a', 98, 181),
    ('nANcS', 67, 188),
    ('9WpoT', 12, 125),
    ('g1cUo', 43, 168),
    ('Tn6wt', 83, 56),
    ('lSKr4', 61, 114),
    ('gD70p', 35, 129),
    ('YFwI4', 77, 190),
    ('8GakX', 46, 149),
    ('bXLMh', 48, 166),
    ('TLpdV', 97, 168),
    ('hzfvU', 72, 171),
    ('fVYNt', 3, 6),
    ('XXBbQ', 65, 18),
    ('9J2Ej', 66, 111),
    ('FduIn', 58, 193),
    ('IqAux', 40, 139),
    ('E6aY6', 50, 26),
    ('ndyQB', 42, 135),
    ('MCiuM', 98, 168),
    ('8F1xt', 31, 193),
    ('Z3XYx', 24, 139),
    ('F8wrX', 51, 95),
    ('fQNda', 50, 26),
    ('JAuP0', 29, 157),
    ('FisQf', 91, 184),
    ('4lU3I', 50, 153),
    ('awdDB', 54, 155),
    ('qQfFs', 31, 2),
    ('Fgzoq', 24, 82),
    ('Go4Y6', 49, 2),
    ('N8U8O', 6, 195),
    ('PTlt1', 68, 146),
    ('eJe38', 58, 133),
    ('ucPLm', 38, 56),
    ('7jU3R', 35, 60),
    ('L4jkc', 98, 29),
    ('DUbeo', 79, 133),
    ('lkqnU', 38, 54),
    ('aeg9z', 13, 55),
    ('DdmgT', 48, 161),
    ('Ks3NZ', 2, 180),
    ('UHYPY', 85, 137),
    ('RVvOg', 62, 78),
    ('sxUaU', 22, 184),
    ('dtJR3', 3, 32),
    ('WMFQ3', 61, 101),
    ('t4UmP', 94, 198),
    ('KhSlZ', 16, 115),
    ('As8az', 38, 46),
    ('dOLrz', 78, null),
    ('LBlG2', 2, 57),
    ('jcjdj', 26, 157),
    ('XA16a', 13, 112),
    ('LKu8n', 38, 123),
    ('byisc', 29, 125),
    ('w6CT4', 97, 16),
    ('Qu6yk', 1, 60),
    ('Z185v', 15, 41),
    ('07aTm', 48, 110),
    ('H2val', 56, 159),
    ('BEANY', 37, 50),
    ('wffl1', 18, 84),
    ('mWtDV', 47, 57),
    ('4niK2', 18, 140),
    ('51uNP', 94, 199),
    ('izezi', 7, 40),
    ('qqA3h', 58, 4),
    ('dUEJP', 76, 182),
    ('6tkoT', 78, 124),
    ('GvrbZ', 29, 22),
    ('KKphF', 60, 57),
    ('NjyV9', 23, 165),
    ('Sp3xp', 25, 69),
    ('497qk', 52, 62),
    ('DFls1', 25, 4),
    ('AeMW0', 38, 43),
    ('fHKOq', 2, 107),
    ('0uNTP', 63, 155),
    ('kBpyB', 47, 171),
    ('wi2I5', 86, 6),
    ('mfhBU', 26, 124),
    ('xUmCQ', 34, 166),
    ('BHo1I', 45, 148),
    ('rPQPE', 63, 32),
    ('g58hG', 99, 181),
    ('inOXD', 70, 83),
    ('uGgJy', 54, 27),
    ('Ik3I0', 6, 164),
    ('OBhEo', 82, 176),
    ('VxhiD', 38, 79),
    ('plrW8', 70, 73),
    ('O0Nnf', 21, 123),
    ('YmotJ', 68, 20),
    ('bLS8y', 93, 198),
    ('9iQ2z', 33, 52),
    ('KEEjp', 24, 6),
    ('rB6UA', 98, 138),
    ('QU3gK', 30, 99),
    ('JNuTC', 99, 86),
    ('HUI7x', 7, 105),
    ('CQ5qg', 80, 8),
    ('b5uY4', 63, 61),
    ('YI56y', 36, 151),
    ('QHwS4', 43, 14),
    ('p1Abr', 68, 32),
    ('Ke4pN', 39, 170),
    ('l8IFD', 78, 47),
    ('yAw1y', 18, 107),
    ('Z7NnL', 24, 53),
    ('GZt9A', 36, 72),
    ('QCNql', 34, 80),
    ('eLyD9', 70, 173),
    ('lXVy3', 10, 158),
    ('eRuum', 75, 105),
    ('0nGyA', 100, 39),
    ('y1W1e', 61, 46),
    ('nFGJi', 17, 29),
    ('y1OLH', 43, 37),
    ('rq17p', 29, 137),
    ('hVkPg', 47, 83),
    ('LqPOh', 82, 26),
    ('20r66', 25, 120),
    ('g8wUD', 77, 139),
    ('ScqVA', 41, 63),
    ('F9pTW', 59, 70),
    ('gGlNJ', 68, 99),
    ('NQ71M', 38, 79),
    ('3b5W2', 76, 58),
    ('OQHLd', 91, 97),
    ('rELRs', 55, 16),
    ('9W0N7', 80, 169),
    ('m3Z5s', 78, 51),
    ('iGrNn', 84, 134),
    ('T9OvF', 51, 114),
    ('fv9AO', 27, 152),
    ('fIcXK', 59, 186),
    ('P783V', 55, 100),
    ('aLPFk', 32, 6),
    ('fRwj3', 67, 118),
    ('kG1me', 90, null),
    ('GckyN', 90, 91),
    ('xnOt4', 39, 131),
    ('H1uJj', 72, 9),
    ('m7bnp', 52, 56),
    ('v8PBg', 95, 82),
    ('q4qze', 36, 150),
    ('DVX52', 69, 148),
    ('H4gvg', 1, 147),
    ('uqUvP', 95, 55),
    ('3xJQl', 55, 154),
    ('EkXeK', 34, 149),
    ('vJfZ3', 96, 1),
    ('gBxaC', 9, 140),
    ('V8ABQ', 70, 23),
    ('te6Z1', 26, 9),
    ('GdAAX', 31, 24),
    ('ntpw2', 66, 93),
    ('ywRuK', 40, 104),
    ('vojnW', 82, 139),
    ('Ngv2k', 59, 41),
    ('p2h8p', 40, 83),
    ('vQ2mM', 22, 126),
    ('GzLyA', 9, 56),
    ('5D63g', 82, 141),
    ('Ifey5', 6, 44),
    ('jmfVy', 47, 138),
    ('4v6tG', 94, 182),
    ('6BTk5', 91, 6),
    ('qZEoi', 69, 115),
    ('6psYS', 0, 29),
    ('MhJ9a', 69, 94),
    ('Uiwk5', 22, 198),
    ('jL3e9', 95, 110),
    ('9ecjH', 13, 99),
    ('NUqSl', 85, 197),
    ('ecL7M', 100, 196),
    ('iAGCL', 28, 151),
    ('gbhCq', 19, 47),
    ('BIcsZ', 55, 148),
    ('239oL', 47, 189),
    ('MGObI', 99, 67),
    ('TglOP', 77, 42),
    ('eeb0R', 86, 65),
    ('zIkLQ', 24, 150),
    ('vKN98', 79, 132),
    ('4VzHw', 66, 24),
    ('eCVc2', 21, 25),
    ('j9fS2', 45, 126),
    ('0angX', 44, 104),
    ('GaZdN', 55, 188),
    ('07qHf', 41, 35),
    ('6IcqK', 46, 61),
    ('piMJi', 78, 59),
    ('3DXSH', 92, 166),
    ('F9g7R', 90, 6),
    ('sQegT', 12, 188),
    ('oekHu', 90, 178),
    ('LzKgB', 27, 63),
    ('d7mqD', 77, 81),
    ('6tbtg', 22, 115),
    ('ZP19S', 99, 39),
    ('LdMlM', 55, 185),
    ('1l5Oh', 65, 174),
    ('1OfJe', 36, 52),
    ('mTtAC', 36, 91),
    ('c1K3N', 75, 185),
    ('y5ELG', 9, 188),
    ('ROQC7', 96, 41),
    ('l3kva', 16, 159),
    ('TUK5p', 19, 5),
    ('lQm2Y', 30, 190),
    ('k28bP', 96, 194),
    ('26rCf', 86, 42),
    ('c4IwH', 20, 65),
    ('423FS', 23, 31),
    ('JZmuQ', 11, 170),
    ('1ilcJ', 35, 153),
    ('dpNuz', 69, 62),
    ('CPVfP', 6, 1),
    ('Xl4Mm', 89, 35),
    ('W2IQ5', 90, 85),
    ('C4jcy', 94, 9),
    ('QICjb', 28, 130),
    ('FNIk3', 22, 119),
    ('Xjxfx', 96, 183),
    ('PTpc5', 33, 106),
    ('KT03k', 40, 65),
    ('vw90X', 32, 19),
    ('4lV9N', 92, 57),
    ('KhXrn', 90, 168),
    ('INkOa', 69, 128),
    ('22Q7d', 67, 133),
    ('gL5NE', 66, 161),
    ('S6vr0', 31, 164),
    ('TMnpg', 14, 40),
    ('O4nl1', 59, 55),
    ('q5W4n', 25, 125),
    ('OtjSa', 28, 135),
    ('BGyrM', 6, 72),
    ('KFVe2', 78, 160),
    ('1bnRZ', 47, 23),
    ('eShuy', 81, 182),
    ('M0yhW', 85, 35),
    ('xBQlM', 87, 37),
    ('NYuTY', 47, 11),
    ('7QAEu', 100, 11),
    ('qabdx', 51, 108),
    ('NQRKg', 85, 84),
    ('CmLa4', 52, 190),
    ('SklZ1', 13, 198),
    ('NngFw', 35, 91),
    ('l7jPJ', 11, 79),
    ('Ll8rM', 50, 88),
    ('WYzU6', 80, 150),
    ('ArySd', 68, 74),
    ('b5cb0', 36, 84),
    ('ydn3j', 97, 71),
    ('HOn7T', 80, 29),
    ('UaETx', 9, 7),
    ('hQu0b', 8, 67),
    ('wmN3n', 56, 165),
    ('jrRdP', 21, 99),
    ('IikLk', 8, 36),
    ('yrald', 100, 183),
    ('CF3MG', 53, 151),
    ('hAPhI', 42, 52),
    ('WtXbk', 71, 1),
    ('a4dgR', 63, 185),
    ('aSJuo', 63, 52),
    ('0CSC9', 77, 122),
    ('MjvCd', 51, 80),
    ('6bGGL', 15, 169),
    ('QVFVg', 23, 130),
    ('wabrQ', 48, 146),
    ('UWAUZ', 44, 195),
    ('eeTFn', 97, 193),
    ('T9FYO', 94, 80),
    ('HQpuG', 59, 76),
    ('lqHdB', 40, 137),
    ('Lmrbb', 49, 56),
    ('hjcqJ', 61, 198),
    ('BfcvF', 42, 198),
    ('PNy13', 61, 90),
    ('w1M8z', 66, 200),
    ('wHbJI', 21, 173),
    ('3cqIV', 37, 152),
    ('pZ02m', 53, 151),
    ('PeVQV', 62, 109),
    ('TNGbE', 48, 170),
    ('Ad4vN', 99, 151),
    ('JkInR', 88, 80),
    ('6eQhJ', 62, 108),
    ('nBa4P', 57, 25),
    ('XkgBu', 8, 117),
    ('Matbk', 62, 43),
    ('FwP48', 33, 24),
    ('7uVMc', 49, 160),
    ('f51BD', 98, 121),
    ('zK27R', 22, 175),
    ('RFrHH', 7, 146),
    ('OT9Of', 88, 98),
    ('ULbVt', 30, 144),
    ('OJnVf', 49, 177),
    ('pD8b2', 10, 44),
    ('a9w8L', 99, 100),
    ('r5OEy', 72, 20),
    ('V3dZ1', 36, 146),
    ('uOndW', 54, 36),
    ('Tz6XO', 84, 162),
    ('Da3Be', 6, 87),
    ('c5phm', 18, 97),
    ('GWhuB', 26, 47),
    ('bAbdu', 75, 160),
    ('oXW7t', 42, 182),
    ('T95oI', 29, 121),
    ('ayVeq', 26, 114),
    ('123WX', 38, 62),
    ('UG802', 55, 121),
    ('KFmFD', 80, 197),
    ('fOAGR', 41, 129),
    ('YWW8z', 9, 7),
    ('y1Y2q', 38, 39),
    ('3jtuz', 34, 133),
    ('M5IrP', 76, 190),
    ('Wx2kU', 85, 16),
    ('yopZF', 22, 60),
    ('UCOkJ', 29, 41),
    ('IENE6', 76, 35),
    ('mSyKt', 41, 106),
    ('qARjD', 33, 71),
    ('Ze0Tg', 23, 106),
    ('PnfnY', 10, 54),
    ('unX8G', 46, 187),
    ('enVbw', 55, 86),
    ('jCEdW', 52, 50),
    ('gzprg', 5, null),
    ('dgVK4', 61, 190),
    ('3jiWv', 34, 11),
    ('55GGi', 47, 136),
    ('5Az96', 31, 141),
    ('0s64Q', 12, 36),
    ('lDESD', 39, 184),
    ('m9h61', 46, 132),
    ('GP3OB', 32, 168),
    ('BMril', 76, 6),
    ('sIZBR', 79, 82),
    ('XC92J', 56, 193),
    ('GSwtA', 34, 23),
    ('ChHRA', 28, 170),
    ('W6we2', 71, 86),
    ('Vynji', 50, 132),
    ('LsNMA', 60, 23),
    ('p9FnD', 9, 31),
    ('bVnO1', 72, 55),
    ('M3nOw', 17, 178),
    ('rDrJM', 85, 99),
    ('Bxr1p', 46, 139),
    ('M0Cly', 17, 105),
    ('Z6YDZ', 91, 86),
    ('ZpFbX', 19, 176),
    ('uya4C', 28, 152),
    ('Wx06L', 14, 162),
    ('oQOlA', 37, 83),
    ('PgZjx', 45, 159),
    ('jiMJf', 33, 18),
    ('wJiOt', 38, 1),
    ('fdWsh', 32, 52),
    ('2sv9K', 36, 76),
    ('kUPnb', 84, 2),
    ('TPcv4', 1, 133),
    ('GOnYG', 48, 194),
    ('UzD0u', 24, 16),
    ('Vq5Fm', 42, 43),
    ('KlujS', 97, 61),
    ('JfItA', 90, 147),
    ('NxAwR', 39, 9),
    ('LvCsF', 31, 4),
    ('ioADT', 34, 169),
    ('esgO5', 39, 120),
    ('ymQeg', 90, 5),
    ('ohLeA', 60, 180),
    ('5xy9I', 22, null),
    ('BR8hf', 72, 131),
    ('QzV4j', 80, 11),
    ('pNXVC', 24, 34),
    ('ANhwt', 11, 154),
    ('MAOrm', 94, 116),
    ('NsYzK', 64, 112),
    ('f0tzn', 33, 33),
    ('e3wm9', 56, 85),
    ('Wgb4l', 73, 36),
    ('su6a8', 90, 39),
    ('VRv5n', 5, 30),
    ('WFn1l', 25, 23),
    ('5g8tB', 74, 142),
    ('OFm9E', 27, 110),
    ('qgDaX', 91, 193),
    ('juiAq', 54, 155),
    ('9Mn8M', 100, 86),
    ('xTF9Z', 46, 35),
    ('EaGkZ', 66, 52),
    ('xy63S', 8, 102),
    ('JJ26K', 67, 73),
    ('H7gAy', 2, 199),
    ('1eGUo', 8, 52),
    ('J65ue', 57, 123),
    ('4MH60', 82, 187),
    ('VH1pz', 30, 197),
    ('lTn8F', 31, 7),
    ('GaPuo', 47, 45),
    ('vUS1D', 32, 200),
    ('Sck0z', 71, 141),
    ('l8vJG', 18, 144),
    ('ewYPC', 44, 100),
    ('UTuUm', 24, 105),
    ('BWr8Y', 1, 10),
    ('bYwtv', 63, 28),
    ('0OBq3', 77, 84),
    ('pCS7d', 12, 61),
    ('9Efo9', 19, 185),
    ('Pdi1A', 91, 32),
    ('MSlmh', 65, 124),
    ('zK3PI', 52, 45),
    ('pxWMY', 59, 61),
    ('cUwQ7', 27, 166),
    ('s4Kpg', 17, 64),
    ('LVvG8', 48, 165),
    ('HIgD3', 88, 38),
    ('vzRQu', 80, 177),
    ('XgMNb', 74, 89),
    ('vUYME', 68, 175),
    ('hTiUw', 1, 163),
    ('h72E8', 97, 84),
    ('eYW96', 90, null),
    ('MfDvA', 100, 176),
    ('py0ZL', 31, 141),
    ('9lsc5', 81, 111),
    ('lfAcb', 7, 183),
    ('ZS6o7', 82, 60),
    ('JOSpE', 19, 103),
    ('EG36j', 59, 142),
    ('bAach', 95, 162),
    ('ogRzC', 73, 192),
    ('jbLru', 33, 133),
    ('5fkly', 6, 172),
    ('KOn97', 38, 49),
    ('Ue4KV', 51, 129),
    ('dGVS3', 61, 125),
    ('SWaAM', 42, 165),
    ('rcLvs', 32, 129),
    ('4Z409', 14, 142),
    ('zxiEk', 22, 31),
    ('5wp9N', 77, 29),
    ('ZEISk', 95, 83),
    ('n9vnz', 53, 72),
    ('UcG3H', 48, 26),
    ('Y4gPW', 49, 196),
    ('Pi8TT', 20, 144),
    ('CxWb0', 99, 88),
    ('9J9fi', 74, 31),
    ('seoit', 51, 129),
    ('hLKw5', 62, 104),
    ('0eF1R', 67, 130),
    ('o4LX3', 51, 33),
    ('TdXQd', 19, 154),
    ('Y8TK5', 98, 35),
    ('cN8k6', 12, 172),
    ('L6Kz3', 5, 93),
    ('oDNc1', 93, 198),
    ('OAX4t', 84, 105),
    ('wB0g4', 79, 184),
    ('iewcS', 64, 107),
    ('bBfc1', 55, 39),
    ('Y2BX7', 13, 112),
    ('b70ZU', 79, 157),
    ('TTpsJ', 5, 182),
    ('H7UMW', 15, 125),
    ('ipYVJ', 77, 63),
    ('7WWad', 38, 138),
    ('aq1NI', 98, 156),
    ('eGmYP', 50, 103),
    ('UDBOy', 41, 70),
    ('1AdPI', 94, 35),
    ('qGd0G', 17, 53),
    ('5lw3B', 58, 166),
    ('brLwq', 55, 148),
    ('ja5Zd', 63, 161),
    ('ZJJ43', 24, 63),
    ('IL0Zq', 1, 184),
    ('FQu3c', 27, 43),
    ('LgSfm', 90, 69),
    ('drExG', 42, 133),
    ('5f5Ha', 40, 30),
    ('fXygX', 88, 69),
    ('Xn9jS', 63, 171),
    ('tAt5J', 12, 124),
    ('lLnPX', 87, 174),
    ('hP7Cm', 61, 16),
    ('ENnRY', 37, 70),
    ('HMPym', 94, 156),
    ('K8pjd', 84, 187),
    ('Gd579', 73, 111),
    ('jTUx7', 41, 125),
    ('FoBu7', 3, 73),
    ('rDbm8', 2, 192),
    ('LhLc2', 69, 183),
    ('RV7Iv', 8, 99),
    ('hPcGg', 73, 155),
    ('sS4YU', 10, 84),
    ('alhpM', 99, 73),
    ('CTf5T', 46, 191),
    ('8DgHy', 2, 4),
    ('xISqd', 21, 8),
    ('QkQ9j', 67, 128),
    ('n6lP7', 40, 114),
    ('eYtra', 2, 68),
    ('qiBXh', 16, 88),
    ('3DszQ', 32, 191),
    ('yTvt8', 26, 84),
    ('ALrsA', 58, 143),
    ('7S3fG', 52, 52),
    ('lgNfv', 28, 92),
    ('0gHPI', 11, 143),
    ('CChoe', 44, 161),
    ('imte2', 59, 29),
    ('dXaKg', 64, 190),
    ('TONMa', 36, 6),
    ('ogMSA', 61, 123),
    ('bX3PB', 15, 101),
    ('YSpk3', 18, 122),
    ('ji9E3', 22, 190),
    ('hJ0MD', 31, 126),
    ('YJ8pq', 52, 96),
    ('0zm2J', 24, 3),
    ('fbGxK', 74, 160),
    ('qD6Ji', 76, 70),
    ('dhAPy', 50, 161),
    ('Y9bfa', 54, 129),
    ('cVxWW', 25, 47),
    ('vw0J1', 53, 149),
    ('SV5if', 24, 129),
    ('2LETP', 80, 95),
    ('VyqE2', 5, 28),
    ('nR9oH', 88, 197),
    ('mJs02', 72, 174),
    ('Tl6V2', 6, 80),
    ('O5EF3', 92, 134),
    ('Lo2Cd', 70, 72),
    ('KwGgW', 15, 125),
    ('tzUR7', 63, 82),
    ('Dqc1S', 40, 2),
    ('LPIjF', 80, 90),
    ('m3nHm', 92, 139),
    ('f2PLo', 30, 10),
    ('I5XkF', 58, 60),
    ('TTvhW', 19, 180),
    ('ctXnq', 23, 148),
    ('uxNgk', 88, 68),
    ('y2HzY', 90, 57),
    ('5TKfu', 62, 155),
    ('Ff53I', 1, 105),
    ('B1Sbx', 100, 5),
    ('Wyl55', 0, 50),
    ('hoU54', 89, 189),
    ('y96wa', 71, 107),
    ('cONFe', 56, 62),
    ('qkLeC', 55, 197),
    ('GZ7mn', 68, 183),
    ('iL2N2', 28, 42),
    ('54Izb', 76, 77),
    ('W40d4', 48, 59),
    ('aMm0g', 45, 69),
    ('cyKiG', 42, 193),
    ('ny3s8', 53, 48),
    ('O2QB2', 62, 155),
    ('MMFFH', 67, 173),
    ('1XCIN', 54, 73),
    ('DBRAS', 23, 114),
    ('fA9vw', 73, 28),
    ('fxin3', 69, 110),
    ('G8kvT', 4, 76),
    ('5KiJ9', 13, 119),
    ('j8SHO', 48, 25),
    ('eFHzH', 74, 131),
    ('0OipZ', 22, 78),
    ('POPqN', 67, 138),
    ('ISUzv', 95, 60),
    ('1rRva', 9, 64),
    ('QM98C', 41, 58),
    ('5gE0T', 93, 5),
    ('fuxDv', 40, 92),
    ('Qgfcr', 6, 91),
    ('MmeyY', 56, 117),
    ('gNON8', 45, 138),
    ('uyAAL', 57, 31),
    ('5AdNN', 17, 160),
    ('mOAh6', 25, 30),
    ('FuFOa', 36, 95),
    ('oPsm0', 61, 101),
    ('Q8eU3', 86, 199),
    ('dPj4V', 41, 155),
    ('jU3SI', 54, 46),
    ('pm7Q0', 89, 142),
    ('PUj9y', 50, 8),
    ('4DjtI', 18, 106),
    ('6Bsoz', 60, 21),
    ('LkzSF', 88, 32),
    ('NFZMI', 29, 95),
    ('fglYY', 10, 36),
    ('I7y0J', 68, 32),
    ('mm9aA', 36, 167),
    ('0MY5H', 56, 177),
    ('t0VoW', 17, 108),
    ('dNNSP', 45, 126),
    ('mqDsN', 66, 54),
    ('etgV3', 7, 136),
    ('bdnqF', 8, 78),
    ('jNlK4', 73, 149),
    ('Bbq17', 100, 25),
    ('nHKX0', 74, 94),
    ('wKsbJ', 58, 144),
    ('b4Sj4', 68, 54),
    ('jNRKM', 0, 149),
    ('3aiQz', 35, 81),
    ('CEwaX', 47, 68),
    ('fFXSl', 2, 129),
    ('boItR', 24, 195),
    ('rBJWp', 75, 115),
    ('5mhU5', 24, 183),
    ('w59Lt', 25, 123),
    ('INET2', 88, 4),
    ('pYRR1', 33, 77),
    ('N22ht', 1, 83),
    ('tPLFS', 92, 94),
    ('DbCgR', 60, 129),
    ('IRpTk', 36, 144),
    ('UK2Oi', 72, 118),
    ('1HhQv', 53, 147),
    ('BuS3O', 40, 167),
    ('nsT7c', 54, 63),
    ('F5cMO', 39, 77),
    ('pXYRa', 60, 10),
    ('QoLce', 5, 115),
    ('1dKmR', 30, 93),
    ('bGsEy', 3, 175),
    ('rL6RB', 16, 31),
    ('V0vxx', 41, 169),
    ('j4LTY', 39, 62),
    ('pjzYc', 23, 151),
    ('DtmUM', 40, 16),
    ('5nVYl', 25, 10),
    ('buK6v', 3, 130),
    ('AJByZ', 36, 121),
    ('xnrfW', 22, 22),
    ('iWPu7', 84, 38),
    ('17tLR', 27, 195),
    ('A42UC', 9, 94),
    ('2xYCg', 43, 141),
    ('PWska', 8, 8),
    ('ZXx8G', 28, 110),
    ('u533d', 65, 135),
    ('ubTpZ', 38, 180),
    ('VMzGj', 88, 34),
    ('mCXob', 82, 161),
    ('MAYlI', 31, 162),
    ('OO3mx', 66, 9),
    ('p6qhR', 33, 74),
    ('dYlv6', 2, 16),
    ('krrAW', 52, 41),
    ('PMwac', 28, 42),
    ('10Qrj', 88, 45),
    ('t3B2U', 96, 4),
    ('jihlF', 85, 131),
    ('ifgAL', 59, 110),
    ('zDY70', 0, 164),
    ('P5YyZ', 54, 98),
    ('ahW80', 78, 165),
    ('lfA4H', 56, 82),
    ('yTn4W', 70, 25),
    ('HpDOr', 0, 103),
    ('HQnop', 23, 168),
    ('NaJa4', 40, 65),
    ('Ntyqo', 71, 29),
    ('9FRcU', 94, 45),
    ('Z7p8d', 78, 77),
    ('VywJC', 0, 54),
    ('QQEkH', 93, 8),
    ('zIl5e', 69, 1),
    ('JL2V8', 81, 101),
    ('TEiUK', 84, 133),
    ('Nzo2a', 2, 118),
    ('wiU1e', 91, 66),
    ('Iuq7F', 59, 16),
    ('CKWKM', 55, 190),
    ('3Hf2n', 92, 32),
    ('wZbKA', 60, 82),
    ('JgK0d', 92, 164),
    ('pGHH8', 47, 69),
    ('2DQXV', 37, 103),
    ('6cQBu', 44, 18),
    ('ONO2g', 31, 187),
    ('JEKJN', 18, 6),
    ('XNHsk', 88, 3),
    ('2zAe8', 29, 172),
    ('bjIYl', 29, 3),
    ('R8w4g', 0, 166),
    ('Br7I4', 71, 113),
    ('TewAY', 34, 49),
    ('n5cNw', 0, 90),
    ('B7aNj', 40, 62),
    ('opwUx', 92, 128),
    ('XyKyE', 96, 138),
    ('HTky2', 48, 37),
    ('rWceH', 79, 98),
    ('HTrAc', 46, 88),
    ('nmPZe', 55, 87),
    ('4AsYo', 55, 95),
    ('SVzAX', 47, 56),
    ('DTCw5', 83, 38),
    ('gU3h2', 76, 13),
    ('Yhzol', 28, 56),
    ('EZorD', 91, 152),
    ('5A82I', 62, 24),
    ('sGJiC', 23, 5),
    ('6BzBZ', 22, 150),
    ('pRBZF', 66, 178),
    ('EyID8', 23, 59),
    ('d6zEP', 98, 154),
    ('qg0yv', 10, 92),
    ('NgDhk', 54, 167),
    ('Bo1W1', 98, 21),
    ('m6O9Y', 24, 41),
    ('XR4na', 40, 53),
    ('8KpiD', 96, 64),
    ('o1pqM', 19, 61),
    ('Z30uF', 86, 131),
    ('0ljJz', 63, 162),
    ('5RrU5', 61, 168),
    ('C7lGh', 36, 95),
    ('Avuns', 79, 36),
    ('BEYkm', 89, 84),
    ('xCajj', 51, 182),
    ('cxw2y', 30, 162),
    ('TzVeI', 92, 84),
    ('Lq6DQ', 90, 90),
    ('i5Umg', 18, 164),
    ('gQolz', 89, 180),
    ('d0KKh', 10, 125),
    ('T3yF3', 37, 25),
    ('xDrUL', 21, 184),
    ('Fg3CP', 12, 76),
    ('qfEWk', 31, 66),
    ('sPg2Y', 15, 105),
    ('Yy318', 77, 14),
    ('vGG76', 14, 160),
    ('WP60N', 52, 168),
    ('95HDL', 19, 33),
    ('y85Zn', 34, 183),
    ('ADTSL', 37, 11),
    ('49PrG', 32, 48),
    ('V8BAC', 25, 162),
    ('UlxDO', 1, 196),
    ('yaOQn', 67, 183),
    ('qMRSg', 21, 47),
    ('jdfjR', 64, 80),
    ('ULpiI', 64, 186),
    ('Hm5Ma', 80, 178),
    ('a011W', 4, 163),
    ('GQ6dq', 24, 21),
    ('TMh6L', 80, 33),
    ('DxP8v', 26, 197),
    ('h67lv', 84, 154),
    ('k8BTx', 78, 129),
    ('Nj5N1', 21, 58),
    ('JFjPZ', 74, 113),
    ('ExxDU', 25, 166),
    ('k5sF1', 57, 45),
    ('k3DFj', 55, 7),
    ('Z9P4Z', 10, 105),
    ('DhaXn', 22, 64),
    ('xhLmI', 6, 61),
    ('iUWJd', 4, 75),
    ('2bFwl', 13, 191),
    ('7Ukoo', 5, 26),
    ('BhLiR', 26, 163),
    ('MGQhF', 47, 109),
    ('0PpYK', 30, 18),
    ('m6wiG', 73, 155),
    ('bN448', 32, 120),
    ('bMLnU', 69, 71),
    ('BwHp4', 57, 177),
    ('2JAuC', 22, 122),
    ('adTVu', 84, 22),
    ('qOGI6', 5, 30),
    ('I6epf', 28, 116),
    ('qrBVh', 84, 168),
    ('cwi6B', 37, 64),
    ('wniNH', 76, 64),
    ('zR45K', 11, 182),
    ('Qnadl', 17, 62),
    ('AsEsW', 12, 112),
    ('8nrWn', 14, 105),
    ('lWGiZ', 63, 35),
    ('7J778', 86, 187),
    ('RZ15C', 57, 70),
    ('bO8fu', 55, 25),
    ('gIgeW', 71, 54),
    ('JjIx5', 68, 16),
    ('15KRr', 37, 165),
    ('R20JQ', 77, 126),
    ('ZpKe8', 67, 35),
    ('EPUnL', 63, 137),
    ('XeCYQ', 78, 143),
    ('M2yeI', 4, 7),
    ('pQFBB', 95, 114),
    ('qITgH', 52, 66),
    ('kybU1', 33, 187),
    ('1me9y', 71, 125),
    ('fmhaU', 45, 65),
    ('Q27uh', 55, 170),
    ('GJvUZ', 75, 149),
    ('jAj5W', 18, 21),
    ('hmZa1', 77, 152),
    ('oE6DP', 36, 16),
    ('hhxV8', 43, 191),
    ('hqCC1', 57, 20),
    ('Lc0ru', 8, 69),
    ('mX8UH', 66, 193),
    ('CSTw4', 7, 67),
    ('avi7r', 66, 126),
    ('kB6dZ', 98, 186),
    ('autYI', 50, 171),
    ('zclYm', 56, 102),
    ('C7aSp', 19, 178),
    ('0FuVl', 43, 193),
    ('53JOi', 62, 98),
    ('zTDUA', 93, 146),
    ('ahbv7', 88, 150),
    ('Vc2sN', 46, 89),
    ('iWRbQ', 1, 91),
    ('eA8iZ', 62, 173),
    ('E9ajL', 22, 105),
    ('p1JbL', 16, 106),
    ('FqkK8', 17, 137),
    ('VtaPZ', 24, 115),
    ('WENoN', 32, 187),
    ('oy0Xr', 38, 49),
    ('RBquR', 16, 187),
    ('JGpal', 91, 49),
    ('laqA7', 39, 24),
    ('iNQKO', 79, 30),
    ('tJijK', 7, 86),
    ('aFl01', 90, 23),
    ('mBF2O', 37, 8),
    ('v3ExV', 99, 119),
    ('0srSt', 39, 102),
    ('F8elp', 30, 39),
    ('KluP2', 37, 166),
    ('GbhkJ', 42, 21),
    ('mNIRF', 79, 166),
    ('XWDhK', 74, 19),
    ('TJnnO', 68, 163),
    ('1tIYu', 2, 72),
    ('CKBzt', 27, 199),
    ('qNwXc', 51, 49),
    ('mhlAU', 42, 79),
    ('M6Mgt', 4, 41),
    ('xT4ar', 39, 51),
    ('1TDgr', 82, 189),
    ('PjHMM', 99, 51),
    ('0j4dC', 22, 16),
    ('sfogs', 92, 171),
    ('aIrop', 81, 183),
    ('xT8h2', 11, 144),
    ('izqZy', 37, 83),
    ('X3z1R', 82, 25),
    ('jYdA3', 61, 40),
    ('fHucS', 18, 197),
    ('AsvS4', 93, 141),
    ('nxwuH', 94, 128),
    ('RC4bW', 69, 197)
;
