insert into
    httpd_tomcat_versions
select
    pkey,
    '/usr/apache/jakarta/tomcat/3.1',
    false
from
    technology_versions
where
    name='jakarta-tomcat'
    and version='3.1.'
;
insert into
    httpd_tomcat_versions
select
    pkey,
    '/usr/apache/jakarta/tomcat/3.2',
    false
from
    technology_versions
where
    name='jakarta-tomcat'
    and version='3.2.4'
;
insert into
    httpd_tomcat_versions
select
    pkey,
    '/usr/apache/jakarta/tomcat/4.1',
    true
from
    technology_versions
where
    name='jakarta-tomcat'
    and version='4.1.31'
;
insert into
    httpd_tomcat_versions
select
    pkey,
    '/usr/apache/jakarta/tomcat/5.5',
    true
from
    technology_versions
where
    name='jakarta-tomcat'
    and version like '5.5.%'
;
