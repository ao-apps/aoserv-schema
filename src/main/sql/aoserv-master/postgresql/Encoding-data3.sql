/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2019, 2020  AO Industries, Inc.
 *     support@aoindustries.com
 *     7262 Bull Pen Cir
 *     Mobile, AL 36695
 *
 * This file is part of aoserv-schema.
 *
 * aoserv-schema is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * aoserv-schema is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

-- 7.1 Mandriva 2006.0
begin;
insert into postgresql."Encoding" values(144, 'ALT', 14);
insert into postgresql."Encoding" values(145, 'BIG5', 14);
insert into postgresql."Encoding" values(146, 'EUC_CN', 14);
insert into postgresql."Encoding" values(147, 'EUC_JP', 14);
insert into postgresql."Encoding" values(148, 'EUC_KR', 14);
insert into postgresql."Encoding" values(149, 'EUC_TW', 14);
insert into postgresql."Encoding" values(150, 'KOI8', 14);
insert into postgresql."Encoding" values(151, 'LATIN1', 14);
insert into postgresql."Encoding" values(152, 'LATIN2', 14);
insert into postgresql."Encoding" values(153, 'LATIN3', 14);
insert into postgresql."Encoding" values(154, 'LATIN4', 14);
insert into postgresql."Encoding" values(155, 'LATIN5', 14);
insert into postgresql."Encoding" values(156, 'MULE_INTERNAL', 14);
insert into postgresql."Encoding" values(157, 'SJIS', 14);
insert into postgresql."Encoding" values(158, 'SQL_ASCII', 14);
insert into postgresql."Encoding" values(159, 'UNICODE', 14);
insert into postgresql."Encoding" values(160, 'WIN', 14);
insert into postgresql."Encoding" values(161, 'WIN1250', 14);
commit;

-- 7.1 CentOS 5 i686,x86_64
begin;
insert into postgresql."Encoding" values(391, 'ALT', 3315);
insert into postgresql."Encoding" values(392, 'BIG5', 3315);
insert into postgresql."Encoding" values(393, 'EUC_CN', 3315);
insert into postgresql."Encoding" values(394, 'EUC_JP', 3315);
insert into postgresql."Encoding" values(395, 'EUC_KR', 3315);
insert into postgresql."Encoding" values(396, 'EUC_TW', 3315);
insert into postgresql."Encoding" values(397, 'KOI8', 3315);
insert into postgresql."Encoding" values(398, 'LATIN1', 3315);
insert into postgresql."Encoding" values(399, 'LATIN2', 3315);
insert into postgresql."Encoding" values(400, 'LATIN3', 3315);
insert into postgresql."Encoding" values(401, 'LATIN4', 3315);
insert into postgresql."Encoding" values(402, 'LATIN5', 3315);
insert into postgresql."Encoding" values(403, 'MULE_INTERNAL', 3315);
insert into postgresql."Encoding" values(404, 'SJIS', 3315);
insert into postgresql."Encoding" values(405, 'SQL_ASCII', 3315);
insert into postgresql."Encoding" values(406, 'UNICODE', 3315);
insert into postgresql."Encoding" values(407, 'WIN', 3315);
insert into postgresql."Encoding" values(408, 'WIN1250', 3315);
commit;

-- 7.2 Mandriva 2006.0
begin;
insert into postgresql."Encoding" values(162, 'ALT', 15);
insert into postgresql."Encoding" values(163, 'BIG5', 15);
insert into postgresql."Encoding" values(164, 'EUC_CN', 15);
insert into postgresql."Encoding" values(165, 'EUC_JP', 15);
insert into postgresql."Encoding" values(166, 'EUC_KR', 15);
insert into postgresql."Encoding" values(167, 'EUC_TW', 15);
insert into postgresql."Encoding" values(168, 'KOI8', 15);
insert into postgresql."Encoding" values(169, 'ISO_8859_5', 15);
insert into postgresql."Encoding" values(170, 'ISO_8859_6', 15);
insert into postgresql."Encoding" values(171, 'ISO_8859_7', 15);
insert into postgresql."Encoding" values(172, 'ISO_8859_8', 15);
insert into postgresql."Encoding" values(173, 'LATIN1', 15);
insert into postgresql."Encoding" values(174, 'LATIN2', 15);
insert into postgresql."Encoding" values(175, 'LATIN3', 15);
insert into postgresql."Encoding" values(176, 'LATIN4', 15);
insert into postgresql."Encoding" values(177, 'LATIN5', 15);
insert into postgresql."Encoding" values(178, 'LATIN6', 15);
insert into postgresql."Encoding" values(179, 'LATIN7', 15);
insert into postgresql."Encoding" values(180, 'LATIN8', 15);
insert into postgresql."Encoding" values(181, 'LATIN9', 15);
insert into postgresql."Encoding" values(182, 'LATIN10', 15);
insert into postgresql."Encoding" values(183, 'MULE_INTERNAL', 15);
insert into postgresql."Encoding" values(184, 'SJIS', 15);
insert into postgresql."Encoding" values(185, 'SQL_ASCII', 15);
insert into postgresql."Encoding" values(186, 'UNICODE', 15);
insert into postgresql."Encoding" values(187, 'WIN', 15);
insert into postgresql."Encoding" values(188, 'WIN1250', 15);
commit;

-- 7.2 CentOS 5 i686,x86_64
begin;
insert into postgresql."Encoding" values(409, 'ALT', 3316);
insert into postgresql."Encoding" values(410, 'BIG5', 3316);
insert into postgresql."Encoding" values(411, 'EUC_CN', 3316);
insert into postgresql."Encoding" values(412, 'EUC_JP', 3316);
insert into postgresql."Encoding" values(413, 'EUC_KR', 3316);
insert into postgresql."Encoding" values(414, 'EUC_TW', 3316);
insert into postgresql."Encoding" values(415, 'KOI8', 3316);
insert into postgresql."Encoding" values(416, 'ISO_8859_5', 3316);
insert into postgresql."Encoding" values(417, 'ISO_8859_6', 3316);
insert into postgresql."Encoding" values(418, 'ISO_8859_7', 3316);
insert into postgresql."Encoding" values(419, 'ISO_8859_8', 3316);
insert into postgresql."Encoding" values(420, 'LATIN1', 3316);
insert into postgresql."Encoding" values(421, 'LATIN2', 3316);
insert into postgresql."Encoding" values(422, 'LATIN3', 3316);
insert into postgresql."Encoding" values(423, 'LATIN4', 3316);
insert into postgresql."Encoding" values(424, 'LATIN5', 3316);
insert into postgresql."Encoding" values(425, 'LATIN6', 3316);
insert into postgresql."Encoding" values(426, 'LATIN7', 3316);
insert into postgresql."Encoding" values(427, 'LATIN8', 3316);
insert into postgresql."Encoding" values(428, 'LATIN9', 3316);
insert into postgresql."Encoding" values(429, 'LATIN10', 3316);
insert into postgresql."Encoding" values(430, 'MULE_INTERNAL', 3316);
insert into postgresql."Encoding" values(431, 'SJIS', 3316);
insert into postgresql."Encoding" values(432, 'SQL_ASCII', 3316);
insert into postgresql."Encoding" values(433, 'UNICODE', 3316);
insert into postgresql."Encoding" values(434, 'WIN', 3316);
insert into postgresql."Encoding" values(435, 'WIN1250', 3316);
commit;

-- 7.3 Mandriva 2006.0
begin;
insert into postgresql."Encoding" values(189, 'ALT', 16);
insert into postgresql."Encoding" values(190, 'BIG5', 16);
insert into postgresql."Encoding" values(191, 'EUC_CN', 16);
insert into postgresql."Encoding" values(192, 'EUC_JP', 16);
insert into postgresql."Encoding" values(193, 'EUC_KR', 16);
insert into postgresql."Encoding" values(194, 'EUC_TW', 16);
insert into postgresql."Encoding" values(195, 'GB18030', 16);
insert into postgresql."Encoding" values(196, 'GBK', 16);
insert into postgresql."Encoding" values(197, 'ISO_8859_5', 16);
insert into postgresql."Encoding" values(198, 'ISO_8859_6', 16);
insert into postgresql."Encoding" values(199, 'ISO_8859_7', 16);
insert into postgresql."Encoding" values(200, 'ISO_8859_8', 16);
insert into postgresql."Encoding" values(201, 'JOHAB', 16);
insert into postgresql."Encoding" values(202, 'KOI8', 16);
insert into postgresql."Encoding" values(203, 'LATIN1', 16);
insert into postgresql."Encoding" values(204, 'LATIN2', 16);
insert into postgresql."Encoding" values(205, 'LATIN3', 16);
insert into postgresql."Encoding" values(206, 'LATIN4', 16);
insert into postgresql."Encoding" values(207, 'LATIN5', 16);
insert into postgresql."Encoding" values(208, 'LATIN6', 16);
insert into postgresql."Encoding" values(209, 'LATIN7', 16);
insert into postgresql."Encoding" values(210, 'LATIN8', 16);
insert into postgresql."Encoding" values(211, 'LATIN9', 16);
insert into postgresql."Encoding" values(212, 'LATIN10', 16);
insert into postgresql."Encoding" values(213, 'MULE_INTERNAL', 16);
insert into postgresql."Encoding" values(214, 'SJIS', 16);
insert into postgresql."Encoding" values(215, 'SQL_ASCII', 16);
insert into postgresql."Encoding" values(216, 'TCVN', 16);
insert into postgresql."Encoding" values(217, 'UHC', 16);
insert into postgresql."Encoding" values(218, 'UNICODE', 16);
insert into postgresql."Encoding" values(219, 'WIN', 16);
insert into postgresql."Encoding" values(220, 'WIN874', 16);
insert into postgresql."Encoding" values(221, 'WIN1250', 16);
insert into postgresql."Encoding" values(222, 'WIN1256', 16);
commit;

-- 7.3 CentOS 5 i686,x86_64
begin;
insert into postgresql."Encoding" values(436, 'ALT', 3317);
insert into postgresql."Encoding" values(437, 'BIG5', 3317);
insert into postgresql."Encoding" values(438, 'EUC_CN', 3317);
insert into postgresql."Encoding" values(439, 'EUC_JP', 3317);
insert into postgresql."Encoding" values(440, 'EUC_KR', 3317);
insert into postgresql."Encoding" values(441, 'EUC_TW', 3317);
insert into postgresql."Encoding" values(442, 'GB18030', 3317);
insert into postgresql."Encoding" values(443, 'GBK', 3317);
insert into postgresql."Encoding" values(444, 'ISO_8859_5', 3317);
insert into postgresql."Encoding" values(445, 'ISO_8859_6', 3317);
insert into postgresql."Encoding" values(446, 'ISO_8859_7', 3317);
insert into postgresql."Encoding" values(447, 'ISO_8859_8', 3317);
insert into postgresql."Encoding" values(448, 'JOHAB', 3317);
insert into postgresql."Encoding" values(449, 'KOI8', 3317);
insert into postgresql."Encoding" values(450, 'LATIN1', 3317);
insert into postgresql."Encoding" values(451, 'LATIN2', 3317);
insert into postgresql."Encoding" values(452, 'LATIN3', 3317);
insert into postgresql."Encoding" values(453, 'LATIN4', 3317);
insert into postgresql."Encoding" values(454, 'LATIN5', 3317);
insert into postgresql."Encoding" values(455, 'LATIN6', 3317);
insert into postgresql."Encoding" values(456, 'LATIN7', 3317);
insert into postgresql."Encoding" values(457, 'LATIN8', 3317);
insert into postgresql."Encoding" values(458, 'LATIN9', 3317);
insert into postgresql."Encoding" values(459, 'LATIN10', 3317);
insert into postgresql."Encoding" values(460, 'MULE_INTERNAL', 3317);
insert into postgresql."Encoding" values(461, 'SJIS', 3317);
insert into postgresql."Encoding" values(462, 'SQL_ASCII', 3317);
insert into postgresql."Encoding" values(463, 'TCVN', 3317);
insert into postgresql."Encoding" values(464, 'UHC', 3317);
insert into postgresql."Encoding" values(465, 'UNICODE', 3317);
insert into postgresql."Encoding" values(466, 'WIN', 3317);
insert into postgresql."Encoding" values(467, 'WIN874', 3317);
insert into postgresql."Encoding" values(468, 'WIN1250', 3317);
insert into postgresql."Encoding" values(469, 'WIN1256', 3317);
commit;

-- 8.0 Mandriva 2006.0
begin;
insert into postgresql."Encoding" values(223, 'ALT', 17);
insert into postgresql."Encoding" values(224, 'EUC_CN', 17);
insert into postgresql."Encoding" values(225, 'EUC_JP', 17);
insert into postgresql."Encoding" values(226, 'EUC_KR', 17);
insert into postgresql."Encoding" values(227, 'EUC_TW', 17);
insert into postgresql."Encoding" values(228, 'ISO_8859_5', 17);
insert into postgresql."Encoding" values(229, 'ISO_8859_6', 17);
insert into postgresql."Encoding" values(230, 'ISO_8859_7', 17);
insert into postgresql."Encoding" values(231, 'ISO_8859_8', 17);
insert into postgresql."Encoding" values(232, 'JOHAB', 17);
insert into postgresql."Encoding" values(233, 'KOI8', 17);
insert into postgresql."Encoding" values(234, 'LATIN1', 17);
insert into postgresql."Encoding" values(235, 'LATIN2', 17);
insert into postgresql."Encoding" values(236, 'LATIN3', 17);
insert into postgresql."Encoding" values(237, 'LATIN4', 17);
insert into postgresql."Encoding" values(238, 'LATIN5', 17);
insert into postgresql."Encoding" values(239, 'LATIN6', 17);
insert into postgresql."Encoding" values(240, 'LATIN7', 17);
insert into postgresql."Encoding" values(241, 'LATIN8', 17);
insert into postgresql."Encoding" values(242, 'LATIN9', 17);
insert into postgresql."Encoding" values(243, 'LATIN10', 17);
insert into postgresql."Encoding" values(244, 'MULE_INTERNAL', 17);
insert into postgresql."Encoding" values(245, 'SQL_ASCII', 17);
insert into postgresql."Encoding" values(246, 'TCVN', 17);
insert into postgresql."Encoding" values(247, 'UNICODE', 17);
insert into postgresql."Encoding" values(248, 'WIN', 17);
insert into postgresql."Encoding" values(249, 'WIN874', 17);
insert into postgresql."Encoding" values(250, 'WIN1250', 17);
insert into postgresql."Encoding" values(251, 'WIN1256', 17);
commit;

-- 8.1 Mandrake 10.1
-- https://www.postgresql.org/docs/8.1/static/multibyte.html
begin;
insert into postgresql."Encoding" values(252, 'BIG5', 18);
insert into postgresql."Encoding" values(253, 'EUC_CN', 18);
insert into postgresql."Encoding" values(254, 'EUC_JP', 18);
insert into postgresql."Encoding" values(255, 'EUC_KR', 18);
insert into postgresql."Encoding" values(256, 'EUC_TW', 18);
insert into postgresql."Encoding" values(257, 'GB18030', 18);
insert into postgresql."Encoding" values(258, 'GBK', 18);
insert into postgresql."Encoding" values(259, 'ISO_8859_5', 18);
insert into postgresql."Encoding" values(260, 'ISO_8859_6', 18);
insert into postgresql."Encoding" values(261, 'ISO_8859_7', 18);
insert into postgresql."Encoding" values(262, 'ISO_8859_8', 18);
insert into postgresql."Encoding" values(263, 'JOHAB', 18);
insert into postgresql."Encoding" values(264, 'KOI8', 18);
insert into postgresql."Encoding" values(265, 'LATIN1', 18);
insert into postgresql."Encoding" values(266, 'LATIN2', 18);
insert into postgresql."Encoding" values(267, 'LATIN3', 18);
insert into postgresql."Encoding" values(268, 'LATIN4', 18);
insert into postgresql."Encoding" values(269, 'LATIN5', 18);
insert into postgresql."Encoding" values(270, 'LATIN6', 18);
insert into postgresql."Encoding" values(271, 'LATIN7', 18);
insert into postgresql."Encoding" values(272, 'LATIN8', 18);
insert into postgresql."Encoding" values(273, 'LATIN9', 18);
insert into postgresql."Encoding" values(274, 'LATIN10', 18);
insert into postgresql."Encoding" values(275, 'MULE_INTERNAL', 18);
insert into postgresql."Encoding" values(276, 'SJIS', 18);
insert into postgresql."Encoding" values(277, 'SQL_ASCII', 18);
insert into postgresql."Encoding" values(278, 'UHC', 18);
insert into postgresql."Encoding" values(279, 'UTF8', 18);
insert into postgresql."Encoding" values(280, 'WIN866', 18);
insert into postgresql."Encoding" values(281, 'WIN874', 18);
insert into postgresql."Encoding" values(282, 'WIN1250', 18);
insert into postgresql."Encoding" values(283, 'WIN1251', 18);
insert into postgresql."Encoding" values(284, 'WIN1252', 18);
insert into postgresql."Encoding" values(285, 'WIN1256', 18);
insert into postgresql."Encoding" values(286, 'WIN1258', 18);
commit;

-- 8.1 RedHat ES4
-- https://www.postgresql.org/docs/8.1/static/multibyte.html
begin;
insert into postgresql."Encoding" values(287, 'BIG5', 2586);
insert into postgresql."Encoding" values(288, 'EUC_CN', 2586);
insert into postgresql."Encoding" values(289, 'EUC_JP', 2586);
insert into postgresql."Encoding" values(290, 'EUC_KR', 2586);
insert into postgresql."Encoding" values(291, 'EUC_TW', 2586);
insert into postgresql."Encoding" values(292, 'GB2586030', 2586);
insert into postgresql."Encoding" values(293, 'GBK', 2586);
insert into postgresql."Encoding" values(294, 'ISO_8859_5', 2586);
insert into postgresql."Encoding" values(295, 'ISO_8859_6', 2586);
insert into postgresql."Encoding" values(296, 'ISO_8859_7', 2586);
insert into postgresql."Encoding" values(297, 'ISO_8859_8', 2586);
insert into postgresql."Encoding" values(298, 'JOHAB', 2586);
insert into postgresql."Encoding" values(299, 'KOI8', 2586);
insert into postgresql."Encoding" values(300, 'LATIN1', 2586);
insert into postgresql."Encoding" values(301, 'LATIN2', 2586);
insert into postgresql."Encoding" values(302, 'LATIN3', 2586);
insert into postgresql."Encoding" values(303, 'LATIN4', 2586);
insert into postgresql."Encoding" values(304, 'LATIN5', 2586);
insert into postgresql."Encoding" values(305, 'LATIN6', 2586);
insert into postgresql."Encoding" values(306, 'LATIN7', 2586);
insert into postgresql."Encoding" values(307, 'LATIN8', 2586);
insert into postgresql."Encoding" values(308, 'LATIN9', 2586);
insert into postgresql."Encoding" values(309, 'LATIN10', 2586);
insert into postgresql."Encoding" values(310, 'MULE_INTERNAL', 2586);
insert into postgresql."Encoding" values(311, 'SJIS', 2586);
insert into postgresql."Encoding" values(312, 'SQL_ASCII', 2586);
insert into postgresql."Encoding" values(313, 'UHC', 2586);
insert into postgresql."Encoding" values(314, 'UTF8', 2586);
insert into postgresql."Encoding" values(315, 'WIN866', 2586);
insert into postgresql."Encoding" values(316, 'WIN874', 2586);
insert into postgresql."Encoding" values(317, 'WIN1250', 2586);
insert into postgresql."Encoding" values(318, 'WIN1251', 2586);
insert into postgresql."Encoding" values(319, 'WIN1252', 2586);
insert into postgresql."Encoding" values(320, 'WIN1256', 2586);
insert into postgresql."Encoding" values(321, 'WIN1258', 2586);
commit;

-- 8.1 CentOS 5 i686,x86_64
-- https://www.postgresql.org/docs/8.1/static/multibyte.html
begin;
insert into postgresql."Encoding" values(322, 'BIG5', 3296);
insert into postgresql."Encoding" values(323, 'EUC_CN', 3296);
insert into postgresql."Encoding" values(324, 'EUC_JP', 3296);
insert into postgresql."Encoding" values(325, 'EUC_KR', 3296);
insert into postgresql."Encoding" values(326, 'EUC_TW', 3296);
insert into postgresql."Encoding" values(327, 'GB2586030', 3296);
insert into postgresql."Encoding" values(328, 'GBK', 3296);
insert into postgresql."Encoding" values(329, 'ISO_8859_5', 3296);
insert into postgresql."Encoding" values(330, 'ISO_8859_6', 3296);
insert into postgresql."Encoding" values(331, 'ISO_8859_7', 3296);
insert into postgresql."Encoding" values(332, 'ISO_8859_8', 3296);
insert into postgresql."Encoding" values(333, 'JOHAB', 3296);
insert into postgresql."Encoding" values(334, 'KOI8', 3296);
insert into postgresql."Encoding" values(335, 'LATIN1', 3296);
insert into postgresql."Encoding" values(336, 'LATIN2', 3296);
insert into postgresql."Encoding" values(337, 'LATIN3', 3296);
insert into postgresql."Encoding" values(338, 'LATIN4', 3296);
insert into postgresql."Encoding" values(339, 'LATIN5', 3296);
insert into postgresql."Encoding" values(340, 'LATIN6', 3296);
insert into postgresql."Encoding" values(341, 'LATIN7', 3296);
insert into postgresql."Encoding" values(342, 'LATIN8', 3296);
insert into postgresql."Encoding" values(343, 'LATIN9', 3296);
insert into postgresql."Encoding" values(344, 'LATIN10', 3296);
insert into postgresql."Encoding" values(345, 'MULE_INTERNAL', 3296);
insert into postgresql."Encoding" values(346, 'SJIS', 3296);
insert into postgresql."Encoding" values(347, 'SQL_ASCII', 3296);
insert into postgresql."Encoding" values(348, 'UHC', 3296);
insert into postgresql."Encoding" values(349, 'UTF8', 3296);
insert into postgresql."Encoding" values(350, 'WIN866', 3296);
insert into postgresql."Encoding" values(351, 'WIN874', 3296);
insert into postgresql."Encoding" values(352, 'WIN1250', 3296);
insert into postgresql."Encoding" values(353, 'WIN1251', 3296);
insert into postgresql."Encoding" values(354, 'WIN1252', 3296);
insert into postgresql."Encoding" values(355, 'WIN1256', 3296);
insert into postgresql."Encoding" values(356, 'WIN1258', 3296);
commit;

-- 8.3 CentOS 5 i686,x86_64
-- https://www.postgresql.org/docs/8.3/static/multibyte.html
begin;
insert into postgresql."Encoding" values(357, 'EUC_CN', 3298);
insert into postgresql."Encoding" values(358, 'EUC_JP', 3298);
insert into postgresql."Encoding" values(359, 'EUC_JIS_2004', 3298);
insert into postgresql."Encoding" values(360, 'EUC_KR', 3298);
insert into postgresql."Encoding" values(361, 'EUC_TW', 3298);
insert into postgresql."Encoding" values(362, 'ISO_8859_5', 3298);
insert into postgresql."Encoding" values(363, 'ISO_8859_6', 3298);
insert into postgresql."Encoding" values(364, 'ISO_8859_7', 3298);
insert into postgresql."Encoding" values(365, 'ISO_8859_8', 3298);
insert into postgresql."Encoding" values(366, 'KOI8', 3298);
insert into postgresql."Encoding" values(367, 'LATIN1', 3298);
insert into postgresql."Encoding" values(368, 'LATIN2', 3298);
insert into postgresql."Encoding" values(369, 'LATIN3', 3298);
insert into postgresql."Encoding" values(370, 'LATIN4', 3298);
insert into postgresql."Encoding" values(371, 'LATIN5', 3298);
insert into postgresql."Encoding" values(372, 'LATIN6', 3298);
insert into postgresql."Encoding" values(373, 'LATIN7', 3298);
insert into postgresql."Encoding" values(374, 'LATIN8', 3298);
insert into postgresql."Encoding" values(375, 'LATIN9', 3298);
insert into postgresql."Encoding" values(376, 'LATIN10', 3298);
insert into postgresql."Encoding" values(377, 'MULE_INTERNAL', 3298);
insert into postgresql."Encoding" values(378, 'SQL_ASCII', 3298);
insert into postgresql."Encoding" values(379, 'UTF8', 3298);
insert into postgresql."Encoding" values(380, 'WIN866', 3298);
insert into postgresql."Encoding" values(381, 'WIN874', 3298);
insert into postgresql."Encoding" values(382, 'WIN1250', 3298);
insert into postgresql."Encoding" values(383, 'WIN1251', 3298);
insert into postgresql."Encoding" values(384, 'WIN1252', 3298);
insert into postgresql."Encoding" values(385, 'WIN1253', 3298);
insert into postgresql."Encoding" values(386, 'WIN1254', 3298);
insert into postgresql."Encoding" values(387, 'WIN1255', 3298);
insert into postgresql."Encoding" values(388, 'WIN1256', 3298);
insert into postgresql."Encoding" values(389, 'WIN1257', 3298);
insert into postgresql."Encoding" values(390, 'WIN1258', 3298);
commit;

-- 8.3 CentOS 7 x86_64
-- https://www.postgresql.org/docs/8.3/static/multibyte.html
begin;
insert into postgresql."Encoding" values(506, 'EUC_CN', 3351);
insert into postgresql."Encoding" values(507, 'EUC_JP', 3351);
insert into postgresql."Encoding" values(508, 'EUC_JIS_2004', 3351);
insert into postgresql."Encoding" values(509, 'EUC_KR', 3351);
insert into postgresql."Encoding" values(510, 'EUC_TW', 3351);
insert into postgresql."Encoding" values(511, 'ISO_8859_5', 3351);
insert into postgresql."Encoding" values(512, 'ISO_8859_6', 3351);
insert into postgresql."Encoding" values(513, 'ISO_8859_7', 3351);
insert into postgresql."Encoding" values(514, 'ISO_8859_8', 3351);
insert into postgresql."Encoding" values(515, 'KOI8', 3351);
insert into postgresql."Encoding" values(516, 'LATIN1', 3351);
insert into postgresql."Encoding" values(517, 'LATIN2', 3351);
insert into postgresql."Encoding" values(518, 'LATIN3', 3351);
insert into postgresql."Encoding" values(519, 'LATIN4', 3351);
insert into postgresql."Encoding" values(520, 'LATIN5', 3351);
insert into postgresql."Encoding" values(521, 'LATIN6', 3351);
insert into postgresql."Encoding" values(522, 'LATIN7', 3351);
insert into postgresql."Encoding" values(523, 'LATIN8', 3351);
insert into postgresql."Encoding" values(524, 'LATIN9', 3351);
insert into postgresql."Encoding" values(525, 'LATIN10', 3351);
insert into postgresql."Encoding" values(526, 'MULE_INTERNAL', 3351);
insert into postgresql."Encoding" values(527, 'SQL_ASCII', 3351);
insert into postgresql."Encoding" values(528, 'UTF8', 3351);
insert into postgresql."Encoding" values(529, 'WIN866', 3351);
insert into postgresql."Encoding" values(530, 'WIN874', 3351);
insert into postgresql."Encoding" values(531, 'WIN1250', 3351);
insert into postgresql."Encoding" values(532, 'WIN1251', 3351);
insert into postgresql."Encoding" values(533, 'WIN1252', 3351);
insert into postgresql."Encoding" values(534, 'WIN1253', 3351);
insert into postgresql."Encoding" values(535, 'WIN1254', 3351);
insert into postgresql."Encoding" values(536, 'WIN1255', 3351);
insert into postgresql."Encoding" values(537, 'WIN1256', 3351);
insert into postgresql."Encoding" values(538, 'WIN1257', 3351);
insert into postgresql."Encoding" values(539, 'WIN1258', 3351);
commit;

-- 9.4 CentOS 5 i686,x86_64
-- https://www.postgresql.org/docs/9.4/static/multibyte.html
begin;
insert into postgresql."Encoding" values(471, 'EUC_CN', 3346);
insert into postgresql."Encoding" values(472, 'EUC_JP', 3346);
insert into postgresql."Encoding" values(473, 'EUC_JIS_2004', 3346);
insert into postgresql."Encoding" values(474, 'EUC_KR', 3346);
insert into postgresql."Encoding" values(475, 'EUC_TW', 3346);
insert into postgresql."Encoding" values(476, 'ISO_8859_5', 3346);
insert into postgresql."Encoding" values(477, 'ISO_8859_6', 3346);
insert into postgresql."Encoding" values(478, 'ISO_8859_7', 3346);
insert into postgresql."Encoding" values(479, 'ISO_8859_8', 3346);
insert into postgresql."Encoding" values(480, 'KOI8R', 3346);
insert into postgresql."Encoding" values(481, 'KOI8U', 3346);
insert into postgresql."Encoding" values(482, 'LATIN1', 3346);
insert into postgresql."Encoding" values(483, 'LATIN2', 3346);
insert into postgresql."Encoding" values(484, 'LATIN3', 3346);
insert into postgresql."Encoding" values(485, 'LATIN4', 3346);
insert into postgresql."Encoding" values(486, 'LATIN5', 3346);
insert into postgresql."Encoding" values(487, 'LATIN6', 3346);
insert into postgresql."Encoding" values(488, 'LATIN7', 3346);
insert into postgresql."Encoding" values(489, 'LATIN8', 3346);
insert into postgresql."Encoding" values(490, 'LATIN9', 3346);
insert into postgresql."Encoding" values(491, 'LATIN10', 3346);
insert into postgresql."Encoding" values(492, 'MULE_INTERNAL', 3346);
insert into postgresql."Encoding" values(493, 'SQL_ASCII', 3346);
insert into postgresql."Encoding" values(494, 'UTF8', 3346);
insert into postgresql."Encoding" values(495, 'WIN866', 3346);
insert into postgresql."Encoding" values(496, 'WIN874', 3346);
insert into postgresql."Encoding" values(497, 'WIN1250', 3346);
insert into postgresql."Encoding" values(498, 'WIN1251', 3346);
insert into postgresql."Encoding" values(499, 'WIN1252', 3346);
insert into postgresql."Encoding" values(500, 'WIN1253', 3346);
insert into postgresql."Encoding" values(501, 'WIN1254', 3346);
insert into postgresql."Encoding" values(502, 'WIN1255', 3346);
insert into postgresql."Encoding" values(503, 'WIN1256', 3346);
insert into postgresql."Encoding" values(504, 'WIN1257', 3346);
insert into postgresql."Encoding" values(505, 'WIN1258', 3346);
commit;

-- 9.4 CentOS 7 x86_64
-- https://www.postgresql.org/docs/9.4/static/multibyte.html
begin;
insert into postgresql."Encoding" values(540, 'EUC_CN', 3353);
insert into postgresql."Encoding" values(541, 'EUC_JP', 3353);
insert into postgresql."Encoding" values(542, 'EUC_JIS_2004', 3353);
insert into postgresql."Encoding" values(543, 'EUC_KR', 3353);
insert into postgresql."Encoding" values(544, 'EUC_TW', 3353);
insert into postgresql."Encoding" values(545, 'ISO_8859_5', 3353);
insert into postgresql."Encoding" values(546, 'ISO_8859_6', 3353);
insert into postgresql."Encoding" values(547, 'ISO_8859_7', 3353);
insert into postgresql."Encoding" values(548, 'ISO_8859_8', 3353);
insert into postgresql."Encoding" values(549, 'KOI8R', 3353);
insert into postgresql."Encoding" values(550, 'KOI8U', 3353);
insert into postgresql."Encoding" values(551, 'LATIN1', 3353);
insert into postgresql."Encoding" values(552, 'LATIN2', 3353);
insert into postgresql."Encoding" values(553, 'LATIN3', 3353);
insert into postgresql."Encoding" values(554, 'LATIN4', 3353);
insert into postgresql."Encoding" values(555, 'LATIN5', 3353);
insert into postgresql."Encoding" values(556, 'LATIN6', 3353);
insert into postgresql."Encoding" values(557, 'LATIN7', 3353);
insert into postgresql."Encoding" values(558, 'LATIN8', 3353);
insert into postgresql."Encoding" values(559, 'LATIN9', 3353);
insert into postgresql."Encoding" values(560, 'LATIN10', 3353);
insert into postgresql."Encoding" values(561, 'MULE_INTERNAL', 3353);
insert into postgresql."Encoding" values(562, 'SQL_ASCII', 3353);
insert into postgresql."Encoding" values(563, 'UTF8', 3353);
insert into postgresql."Encoding" values(564, 'WIN866', 3353);
insert into postgresql."Encoding" values(565, 'WIN874', 3353);
insert into postgresql."Encoding" values(566, 'WIN1250', 3353);
insert into postgresql."Encoding" values(567, 'WIN1251', 3353);
insert into postgresql."Encoding" values(568, 'WIN1252', 3353);
insert into postgresql."Encoding" values(569, 'WIN1253', 3353);
insert into postgresql."Encoding" values(570, 'WIN1254', 3353);
insert into postgresql."Encoding" values(571, 'WIN1255', 3353);
insert into postgresql."Encoding" values(572, 'WIN1256', 3353);
insert into postgresql."Encoding" values(573, 'WIN1257', 3353);
insert into postgresql."Encoding" values(574, 'WIN1258', 3353);
commit;

-- 9.5 CentOS 7 x86_64
-- https://www.postgresql.org/docs/9.5/static/multibyte.html (Server = Yes only)
begin;
insert into postgresql."Encoding" values(575, 'EUC_CN', 3369);
insert into postgresql."Encoding" values(576, 'EUC_JP', 3369);
insert into postgresql."Encoding" values(577, 'EUC_JIS_2004', 3369);
insert into postgresql."Encoding" values(578, 'EUC_KR', 3369);
insert into postgresql."Encoding" values(579, 'EUC_TW', 3369);
insert into postgresql."Encoding" values(580, 'ISO_8859_5', 3369);
insert into postgresql."Encoding" values(581, 'ISO_8859_6', 3369);
insert into postgresql."Encoding" values(582, 'ISO_8859_7', 3369);
insert into postgresql."Encoding" values(583, 'ISO_8859_8', 3369);
insert into postgresql."Encoding" values(584, 'KOI8R', 3369);
insert into postgresql."Encoding" values(585, 'KOI8U', 3369);
insert into postgresql."Encoding" values(586, 'LATIN1', 3369);
insert into postgresql."Encoding" values(587, 'LATIN2', 3369);
insert into postgresql."Encoding" values(588, 'LATIN3', 3369);
insert into postgresql."Encoding" values(589, 'LATIN4', 3369);
insert into postgresql."Encoding" values(590, 'LATIN5', 3369);
insert into postgresql."Encoding" values(591, 'LATIN6', 3369);
insert into postgresql."Encoding" values(592, 'LATIN7', 3369);
insert into postgresql."Encoding" values(593, 'LATIN8', 3369);
insert into postgresql."Encoding" values(594, 'LATIN9', 3369);
insert into postgresql."Encoding" values(595, 'LATIN10', 3369);
insert into postgresql."Encoding" values(596, 'MULE_INTERNAL', 3369);
insert into postgresql."Encoding" values(597, 'SQL_ASCII', 3369);
insert into postgresql."Encoding" values(598, 'UTF8', 3369);
insert into postgresql."Encoding" values(599, 'WIN866', 3369);
insert into postgresql."Encoding" values(600, 'WIN874', 3369);
insert into postgresql."Encoding" values(601, 'WIN1250', 3369);
insert into postgresql."Encoding" values(602, 'WIN1251', 3369);
insert into postgresql."Encoding" values(603, 'WIN1252', 3369);
insert into postgresql."Encoding" values(604, 'WIN1253', 3369);
insert into postgresql."Encoding" values(605, 'WIN1254', 3369);
insert into postgresql."Encoding" values(606, 'WIN1255', 3369);
insert into postgresql."Encoding" values(607, 'WIN1256', 3369);
insert into postgresql."Encoding" values(608, 'WIN1257', 3369);
insert into postgresql."Encoding" values(609, 'WIN1258', 3369);
commit;

-- 9.6 CentOS 7 x86_64
-- https://www.postgresql.org/docs/9.6/static/multibyte.html (Server = Yes only)
begin;
insert into postgresql."Encoding" values(610, 'EUC_CN', 3370);
insert into postgresql."Encoding" values(611, 'EUC_JP', 3370);
insert into postgresql."Encoding" values(612, 'EUC_JIS_2004', 3370);
insert into postgresql."Encoding" values(613, 'EUC_KR', 3370);
insert into postgresql."Encoding" values(614, 'EUC_TW', 3370);
insert into postgresql."Encoding" values(615, 'ISO_8859_5', 3370);
insert into postgresql."Encoding" values(616, 'ISO_8859_6', 3370);
insert into postgresql."Encoding" values(617, 'ISO_8859_7', 3370);
insert into postgresql."Encoding" values(618, 'ISO_8859_8', 3370);
insert into postgresql."Encoding" values(619, 'KOI8R', 3370);
insert into postgresql."Encoding" values(620, 'KOI8U', 3370);
insert into postgresql."Encoding" values(621, 'LATIN1', 3370);
insert into postgresql."Encoding" values(622, 'LATIN2', 3370);
insert into postgresql."Encoding" values(623, 'LATIN3', 3370);
insert into postgresql."Encoding" values(624, 'LATIN4', 3370);
insert into postgresql."Encoding" values(625, 'LATIN5', 3370);
insert into postgresql."Encoding" values(626, 'LATIN6', 3370);
insert into postgresql."Encoding" values(627, 'LATIN7', 3370);
insert into postgresql."Encoding" values(628, 'LATIN8', 3370);
insert into postgresql."Encoding" values(629, 'LATIN9', 3370);
insert into postgresql."Encoding" values(630, 'LATIN10', 3370);
insert into postgresql."Encoding" values(631, 'MULE_INTERNAL', 3370);
insert into postgresql."Encoding" values(632, 'SQL_ASCII', 3370);
insert into postgresql."Encoding" values(633, 'UTF8', 3370);
insert into postgresql."Encoding" values(634, 'WIN866', 3370);
insert into postgresql."Encoding" values(635, 'WIN874', 3370);
insert into postgresql."Encoding" values(636, 'WIN1250', 3370);
insert into postgresql."Encoding" values(637, 'WIN1251', 3370);
insert into postgresql."Encoding" values(638, 'WIN1252', 3370);
insert into postgresql."Encoding" values(639, 'WIN1253', 3370);
insert into postgresql."Encoding" values(640, 'WIN1254', 3370);
insert into postgresql."Encoding" values(641, 'WIN1255', 3370);
insert into postgresql."Encoding" values(642, 'WIN1256', 3370);
insert into postgresql."Encoding" values(643, 'WIN1257', 3370);
insert into postgresql."Encoding" values(644, 'WIN1258', 3370);
commit;

-- 10 CentOS 7 x86_64
-- https://www.postgresql.org/docs/10/static/multibyte.html (Server = Yes only)
begin;
insert into postgresql."Encoding" values(645, 'EUC_CN', 3371);
insert into postgresql."Encoding" values(646, 'EUC_JP', 3371);
insert into postgresql."Encoding" values(647, 'EUC_JIS_2004', 3371);
insert into postgresql."Encoding" values(648, 'EUC_KR', 3371);
insert into postgresql."Encoding" values(649, 'EUC_TW', 3371);
insert into postgresql."Encoding" values(650, 'ISO_8859_5', 3371);
insert into postgresql."Encoding" values(651, 'ISO_8859_6', 3371);
insert into postgresql."Encoding" values(652, 'ISO_8859_7', 3371);
insert into postgresql."Encoding" values(653, 'ISO_8859_8', 3371);
insert into postgresql."Encoding" values(654, 'KOI8R', 3371);
insert into postgresql."Encoding" values(655, 'KOI8U', 3371);
insert into postgresql."Encoding" values(656, 'LATIN1', 3371);
insert into postgresql."Encoding" values(657, 'LATIN2', 3371);
insert into postgresql."Encoding" values(658, 'LATIN3', 3371);
insert into postgresql."Encoding" values(659, 'LATIN4', 3371);
insert into postgresql."Encoding" values(660, 'LATIN5', 3371);
insert into postgresql."Encoding" values(661, 'LATIN6', 3371);
insert into postgresql."Encoding" values(662, 'LATIN7', 3371);
insert into postgresql."Encoding" values(663, 'LATIN8', 3371);
insert into postgresql."Encoding" values(664, 'LATIN9', 3371);
insert into postgresql."Encoding" values(665, 'LATIN10', 3371);
insert into postgresql."Encoding" values(666, 'MULE_INTERNAL', 3371);
insert into postgresql."Encoding" values(667, 'SQL_ASCII', 3371);
insert into postgresql."Encoding" values(668, 'UTF8', 3371);
insert into postgresql."Encoding" values(669, 'WIN866', 3371);
insert into postgresql."Encoding" values(670, 'WIN874', 3371);
insert into postgresql."Encoding" values(671, 'WIN1250', 3371);
insert into postgresql."Encoding" values(672, 'WIN1251', 3371);
insert into postgresql."Encoding" values(673, 'WIN1252', 3371);
insert into postgresql."Encoding" values(674, 'WIN1253', 3371);
insert into postgresql."Encoding" values(675, 'WIN1254', 3371);
insert into postgresql."Encoding" values(676, 'WIN1255', 3371);
insert into postgresql."Encoding" values(677, 'WIN1256', 3371);
insert into postgresql."Encoding" values(678, 'WIN1257', 3371);
insert into postgresql."Encoding" values(679, 'WIN1258', 3371);

-- 11 CentOS 7 x86_64
-- https://www.postgresql.org/docs/11/static/multibyte.html (Server = Yes only)
begin;
insert into postgresql."Encoding" values(680, 'EUC_CN', 3380);
insert into postgresql."Encoding" values(681, 'EUC_JP', 3380);
insert into postgresql."Encoding" values(682, 'EUC_JIS_2004', 3380);
insert into postgresql."Encoding" values(683, 'EUC_KR', 3380);
insert into postgresql."Encoding" values(684, 'EUC_TW', 3380);
insert into postgresql."Encoding" values(685, 'ISO_8859_5', 3380);
insert into postgresql."Encoding" values(686, 'ISO_8859_6', 3380);
insert into postgresql."Encoding" values(687, 'ISO_8859_7', 3380);
insert into postgresql."Encoding" values(688, 'ISO_8859_8', 3380);
insert into postgresql."Encoding" values(689, 'KOI8R', 3380);
insert into postgresql."Encoding" values(690, 'KOI8U', 3380);
insert into postgresql."Encoding" values(691, 'LATIN1', 3380);
insert into postgresql."Encoding" values(692, 'LATIN2', 3380);
insert into postgresql."Encoding" values(693, 'LATIN3', 3380);
insert into postgresql."Encoding" values(694, 'LATIN4', 3380);
insert into postgresql."Encoding" values(695, 'LATIN5', 3380);
insert into postgresql."Encoding" values(696, 'LATIN6', 3380);
insert into postgresql."Encoding" values(697, 'LATIN7', 3380);
insert into postgresql."Encoding" values(698, 'LATIN8', 3380);
insert into postgresql."Encoding" values(699, 'LATIN9', 3380);
insert into postgresql."Encoding" values(700, 'LATIN10', 3380);
insert into postgresql."Encoding" values(701, 'MULE_INTERNAL', 3380);
insert into postgresql."Encoding" values(702, 'SQL_ASCII', 3380);
insert into postgresql."Encoding" values(703, 'UTF8', 3380);
insert into postgresql."Encoding" values(704, 'WIN866', 3380);
insert into postgresql."Encoding" values(705, 'WIN874', 3380);
insert into postgresql."Encoding" values(706, 'WIN1250', 3380);
insert into postgresql."Encoding" values(707, 'WIN1251', 3380);
insert into postgresql."Encoding" values(708, 'WIN1252', 3380);
insert into postgresql."Encoding" values(709, 'WIN1253', 3380);
insert into postgresql."Encoding" values(710, 'WIN1254', 3380);
insert into postgresql."Encoding" values(711, 'WIN1255', 3380);
insert into postgresql."Encoding" values(712, 'WIN1256', 3380);
insert into postgresql."Encoding" values(713, 'WIN1257', 3380);
insert into postgresql."Encoding" values(714, 'WIN1258', 3380);
commit;

-- 12 CentOS 7 x86_64
-- https://www.postgresql.org/docs/12/multibyte.html (Server = Yes only)
begin;
insert into postgresql."Encoding" values(715, 'EUC_CN', 3388);
insert into postgresql."Encoding" values(716, 'EUC_JP', 3388);
insert into postgresql."Encoding" values(717, 'EUC_JIS_2004', 3388);
insert into postgresql."Encoding" values(718, 'EUC_KR', 3388);
insert into postgresql."Encoding" values(719, 'EUC_TW', 3388);
insert into postgresql."Encoding" values(720, 'ISO_8859_5', 3388);
insert into postgresql."Encoding" values(721, 'ISO_8859_6', 3388);
insert into postgresql."Encoding" values(722, 'ISO_8859_7', 3388);
insert into postgresql."Encoding" values(723, 'ISO_8859_8', 3388);
insert into postgresql."Encoding" values(724, 'KOI8R', 3388);
insert into postgresql."Encoding" values(725, 'KOI8U', 3388);
insert into postgresql."Encoding" values(726, 'LATIN1', 3388);
insert into postgresql."Encoding" values(727, 'LATIN2', 3388);
insert into postgresql."Encoding" values(728, 'LATIN3', 3388);
insert into postgresql."Encoding" values(729, 'LATIN4', 3388);
insert into postgresql."Encoding" values(730, 'LATIN5', 3388);
insert into postgresql."Encoding" values(731, 'LATIN6', 3388);
insert into postgresql."Encoding" values(732, 'LATIN7', 3388);
insert into postgresql."Encoding" values(733, 'LATIN8', 3388);
insert into postgresql."Encoding" values(734, 'LATIN9', 3388);
insert into postgresql."Encoding" values(735, 'LATIN10', 3388);
insert into postgresql."Encoding" values(736, 'MULE_INTERNAL', 3388);
insert into postgresql."Encoding" values(737, 'SQL_ASCII', 3388);
insert into postgresql."Encoding" values(738, 'UTF8', 3388);
insert into postgresql."Encoding" values(739, 'WIN866', 3388);
insert into postgresql."Encoding" values(740, 'WIN874', 3388);
insert into postgresql."Encoding" values(741, 'WIN1250', 3388);
insert into postgresql."Encoding" values(742, 'WIN1251', 3388);
insert into postgresql."Encoding" values(743, 'WIN1252', 3388);
insert into postgresql."Encoding" values(744, 'WIN1253', 3388);
insert into postgresql."Encoding" values(745, 'WIN1254', 3388);
insert into postgresql."Encoding" values(746, 'WIN1255', 3388);
insert into postgresql."Encoding" values(747, 'WIN1256', 3388);
insert into postgresql."Encoding" values(748, 'WIN1257', 3388);
insert into postgresql."Encoding" values(749, 'WIN1258', 3388);
commit;

-- 13 CentOS 7 x86_64
-- https://www.postgresql.org/docs/13/multibyte.html (Server = Yes only)
begin;
insert into postgresql."Encoding" values(750, 'EUC_CN', 3392);
insert into postgresql."Encoding" values(751, 'EUC_JP', 3392);
insert into postgresql."Encoding" values(752, 'EUC_JIS_2004', 3392);
insert into postgresql."Encoding" values(753, 'EUC_KR', 3392);
insert into postgresql."Encoding" values(754, 'EUC_TW', 3392);
insert into postgresql."Encoding" values(755, 'ISO_8859_5', 3392);
insert into postgresql."Encoding" values(756, 'ISO_8859_6', 3392);
insert into postgresql."Encoding" values(757, 'ISO_8859_7', 3392);
insert into postgresql."Encoding" values(758, 'ISO_8859_8', 3392);
insert into postgresql."Encoding" values(759, 'KOI8R', 3392);
insert into postgresql."Encoding" values(760, 'KOI8U', 3392);
insert into postgresql."Encoding" values(761, 'LATIN1', 3392);
insert into postgresql."Encoding" values(762, 'LATIN2', 3392);
insert into postgresql."Encoding" values(763, 'LATIN3', 3392);
insert into postgresql."Encoding" values(764, 'LATIN4', 3392);
insert into postgresql."Encoding" values(765, 'LATIN5', 3392);
insert into postgresql."Encoding" values(766, 'LATIN6', 3392);
insert into postgresql."Encoding" values(767, 'LATIN7', 3392);
insert into postgresql."Encoding" values(768, 'LATIN8', 3392);
insert into postgresql."Encoding" values(769, 'LATIN9', 3392);
insert into postgresql."Encoding" values(770, 'LATIN10', 3392);
insert into postgresql."Encoding" values(771, 'MULE_INTERNAL', 3392);
insert into postgresql."Encoding" values(772, 'SQL_ASCII', 3392);
insert into postgresql."Encoding" values(773, 'UTF8', 3392);
insert into postgresql."Encoding" values(774, 'WIN866', 3392);
insert into postgresql."Encoding" values(775, 'WIN874', 3392);
insert into postgresql."Encoding" values(776, 'WIN1250', 3392);
insert into postgresql."Encoding" values(777, 'WIN1251', 3392);
insert into postgresql."Encoding" values(778, 'WIN1252', 3392);
insert into postgresql."Encoding" values(779, 'WIN1253', 3392);
insert into postgresql."Encoding" values(780, 'WIN1254', 3392);
insert into postgresql."Encoding" values(781, 'WIN1255', 3392);
insert into postgresql."Encoding" values(782, 'WIN1256', 3392);
insert into postgresql."Encoding" values(783, 'WIN1257', 3392);
insert into postgresql."Encoding" values(784, 'WIN1258', 3392);
commit;
