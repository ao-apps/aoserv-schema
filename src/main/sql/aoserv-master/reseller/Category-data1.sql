/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020  AO Industries, Inc.
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
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

begin;
insert into reseller."Category" values(1, null, 'email');
    insert into reseller."Category" values(2, 1, 'abuse');
    insert into reseller."Category" values(3, 1, 'blacklist');
    insert into reseller."Category" values(4, 1, 'spam');
    insert into reseller."Category" values(5, 1, 'smtp');
    insert into reseller."Category" values(6, 1, 'pop');
    insert into reseller."Category" values(7, 1, 'imap');
    insert into reseller."Category" values(8, 1, 'spf');
    insert into reseller."Category" values(9, 1, 'forwarding');
    insert into reseller."Category" values(10, 1, 'lists');
        insert into reseller."Category" values(11, 10, 'majordomo');
insert into reseller."Category" values(12, null, 'databases');
    insert into reseller."Category" values(13, 12, 'mysql');
        insert into reseller."Category" values(14, 13, 'innodb');
        insert into reseller."Category" values(15, 13, 'replication');
    insert into reseller."Category" values(16, 12, 'postgresql');
        insert into reseller."Category" values(17, 16, 'postgis');
    insert into reseller."Category" values(18, 12, 'interbase');
insert into reseller."Category" values(19, null, 'billing');
    insert into reseller."Category" values(20, 19, 'history');
    insert into reseller."Category" values(21, 19, 'payment');
insert into reseller."Category" values(22, null, 'programming');
    insert into reseller."Category" values(23, 22, 'cgi');
    insert into reseller."Category" values(24, 22, 'java');
        insert into reseller."Category" values(25, 24, 'j2ee');
        insert into reseller."Category" values(26, 24, 'java_ee_5');
        insert into reseller."Category" values(27, 24, 'struts');
        insert into reseller."Category" values(28, 24, 'spring');
        insert into reseller."Category" values(29, 24, 'appfuse');
        insert into reseller."Category" values(30, 24, 'servlets');
        insert into reseller."Category" values(31, 24, 'jsp');
            insert into reseller."Category" values(32, 31, 'jstl');
        insert into reseller."Category" values(33, 24, 'jdbc');
        insert into reseller."Category" values(34, 24, 'hibernate');
    insert into reseller."Category" values(35, 22, 'python');
    insert into reseller."Category" values(36, 22, 'php');
    insert into reseller."Category" values(37, 22, 'gcc');
    insert into reseller."Category" values(38, 22, 'perl');
    insert into reseller."Category" values(39, 22, 'ruby');
        insert into reseller."Category" values(40, 39, 'rails');
    insert into reseller."Category" values(41, 22, 'groovy');
        insert into reseller."Category" values(42, 41, 'grails');
insert into reseller."Category" values(43, null, 'server_access');
    insert into reseller."Category" values(44, 43, 'shell_account');
    insert into reseller."Category" values(45, 43, 'telnet');
    insert into reseller."Category" values(46, 43, 'ftp');
    insert into reseller."Category" values(47, 43, 'ssh');
        insert into reseller."Category" values(48, 47, 'sftp');
    insert into reseller."Category" values(105, 43, 'x11');
    insert into reseller."Category" values(106, 43, 'vnc');
    insert into reseller."Category" values(107, 43, 'rdp');
insert into reseller."Category" values(49, null, 'web_servers');
    insert into reseller."Category" values(50, 49, 'apache');
    insert into reseller."Category" values(51, 49, 'tomcat');
    insert into reseller."Category" values(52, 49, 'glassfish');
    insert into reseller."Category" values(53, 49, 'jboss');
insert into reseller."Category" values(54, null, 'version_control');
    insert into reseller."Category" values(55, 54, 'cvs');
    insert into reseller."Category" values(56, 54, 'subversion');
insert into reseller."Category" values(57, null, 'dns');
insert into reseller."Category" values(58, null, 'web_design');
    insert into reseller."Category" values(59, 58, 'html');
    insert into reseller."Category" values(60, 58, 'css');
    insert into reseller."Category" values(61, 58, 'ajax');
    insert into reseller."Category" values(62, 58, 'flash');
    insert into reseller."Category" values(63, 58, 'applets');
insert into reseller."Category" values(64, null, 'logging_stats');
    insert into reseller."Category" values(65, 64, 'awstats');
insert into reseller."Category" values(66, null, 'security');
    insert into reseller."Category" values(67, 66, 'encryption');
        insert into reseller."Category" values(68, 67, 'gpg');
        insert into reseller."Category" values(69, 67, 'openssl');
        insert into reseller."Category" values(70, 67, 'bouncycastle');
    insert into reseller."Category" values(71, 66, 'firewalls');
    insert into reseller."Category" values(108, 66, 'intrusion_detection');
insert into reseller."Category" values(72, null, 'reseller_system');
    insert into reseller."Category" values(73, 72, 'package_builder');
    insert into reseller."Category" values(74, 72, 'support_system');
    insert into reseller."Category" values(75, 72, 'aoweb_struts');
insert into reseller."Category" values(76, null, 'cms');
    insert into reseller."Category" values(77, 76, 'xoops');
    insert into reseller."Category" values(78, 76, 'wiki');
        insert into reseller."Category" values(79, 78, 'mediawiki');
        insert into reseller."Category" values(80, 78, 'tikiwiki');
    insert into reseller."Category" values(81, 76, 'drupal');
    insert into reseller."Category" values(82, 76, 'joomla');
    insert into reseller."Category" values(83, 76, 'mambo');
    insert into reseller."Category" values(84, 76, 'wordpress');
insert into reseller."Category" values(85, null, 'forums');
    insert into reseller."Category" values(86, 85, 'smf');
    insert into reseller."Category" values(87, 85, 'phpbb');
insert into reseller."Category" values(88, null, 'groupware');
    insert into reseller."Category" values(89, 88, 'phpgroupware');
insert into reseller."Category" values(90, null, 'feedback');
    insert into reseller."Category" values(91, 90, 'testimonial');
insert into reseller."Category" values(92, null, 'aoserv');
    insert into reseller."Category" values(93, 92, 'aoserv_client');
    insert into reseller."Category" values(94, 92, 'aosh');
    insert into reseller."Category" values(95, 92, 'aoserv_daemon');
    insert into reseller."Category" values(110, 92, 'aoserv_master');
    insert into reseller."Category" values(96, 92, 'aoweb_struts');
        insert into reseller."Category" values(109, 96, 'control_panels');
insert into reseller."Category" values(97, null, 'ip_addresses');
insert into reseller."Category" values(98, null, 'performance');
insert into reseller."Category" values(99, null, 'reliability');
    insert into reseller."Category" values(100, 99, 'monitoring');
insert into reseller."Category" values(101, null, 'support_systems');
    insert into reseller."Category" values(102, 101, 'web_interface');
    insert into reseller."Category" values(103, 101, 'email_support');
insert into reseller."Category" values(104, null, 'hardware');
commit;
