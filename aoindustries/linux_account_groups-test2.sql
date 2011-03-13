begin;
insert into linux_account_groups select * from
    (select 1) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='root') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='root') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 2) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='avahi') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='avahi') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 3) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='bin') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='bin') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 4) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='daemon') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='daemon') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 5) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='adm') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='adm') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 6) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='lp') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='lp') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 7) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='sync') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='root') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 8) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='shutdown') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='root') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 9) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='halt') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='root') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 10) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='mail') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='mail') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 11) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='cyrus') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='mail') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 12) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='cyrus') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='saslauth') as linux_group on true
    left join (select false) as is_primary on true
;
insert into linux_account_groups select * from
    (select 13) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='operator') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='root') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 14) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='games') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='users') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 16) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='ftp') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='ftp') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 17) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='nobody') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='nobody') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 18) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='mailnull') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='mailnull') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 19) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='rpc') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='rpc') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 20) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='dbus') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='dbus') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 21) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='xfs') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='xfs') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 22) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='mysql') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='mysql') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 23) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='ftpmon') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='ftpmon') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 24) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='gopher') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='gopher') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 25) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='emailmon') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='mailonly') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 26) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='news') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='news') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 27) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='aoadmin') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='aoadmin') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 28) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='named') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='named') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 30) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='postgres') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='postgres') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 33) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='root') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='bin') as linux_group on true
    left join (select false) as is_primary on true
;
insert into linux_account_groups select * from
    (select 34) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='daemon') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='bin') as linux_group on true
    left join (select false) as is_primary on true
;
insert into linux_account_groups select * from
    (select 35) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='root') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='daemon') as linux_group on true
    left join (select false) as is_primary on true
;
insert into linux_account_groups select * from
    (select 36) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='bin') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='daemon') as linux_group on true
    left join (select false) as is_primary on true
;
insert into linux_account_groups select * from
    (select 37) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='root') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='sys') as linux_group on true
    left join (select false) as is_primary on true
;
insert into linux_account_groups select * from
    (select 38) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='bin') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='sys') as linux_group on true
    left join (select false) as is_primary on true
;
insert into linux_account_groups select * from
    (select 39) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='adm') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='sys') as linux_group on true
    left join (select false) as is_primary on true
;
insert into linux_account_groups select * from
    (select 40) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='root') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='adm') as linux_group on true
    left join (select false) as is_primary on true
;
insert into linux_account_groups select * from
    (select 41) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='daemon') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='adm') as linux_group on true
    left join (select false) as is_primary on true
;
insert into linux_account_groups select * from
    (select 42) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='root') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='disk') as linux_group on true
    left join (select false) as is_primary on true
;
insert into linux_account_groups select * from
    (select 43) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='daemon') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='lp') as linux_group on true
    left join (select false) as is_primary on true
;
insert into linux_account_groups select * from
    (select 44) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='root') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='wheel') as linux_group on true
    left join (select false) as is_primary on true
;
insert into linux_account_groups select * from
    (select 45) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='interbase') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='interbase') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 46) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='apache') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='apache') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 47) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='haldaemon') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='haldaemon') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 48) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='xvfb') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='xvfb') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 49) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='uucp') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='uucp') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 50) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='pcap') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='pcap') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 51) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='distcache') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='distcache') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 52) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='nfsnobody') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='nfsnobody') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 53) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='rpcuser') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='rpcuser') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 54) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='sshd') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='sshd') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 55) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='smmsp') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='smmsp') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 56) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='rpm') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='rpm') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 57) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='ntp') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='ntp') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 58) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='vcsa') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='vcsa') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 59) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='awstats') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='awstats') as linux_group on true
    left join (select true) as is_primary on true
;
insert into linux_account_groups select * from
    (select 60) as pkey
    left join (select ao_server_resource, linux_account_type, ao_server from linux_accounts where ao_server=135 and username='testimap') as linux_account on true
    left join (select ao_server_resource, linux_group_type, group_name from linux_groups where ao_server=135 and group_name='mailonly') as linux_group on true
    left join (select true) as is_primary on true
;
commit;
SELECT setval ('"linux_account_groups_pkey_seq"', 61, true);
