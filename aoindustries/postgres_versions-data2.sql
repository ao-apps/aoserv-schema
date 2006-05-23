insert into
    postgres_versions
select
    pkey,
    '7.1'
from
    technology_versions
where
    name='postgresql'
    and version='7.1.3'
;
insert into
    postgres_versions
select
    pkey,
    '7.2'
from
    technology_versions
where
    name='postgresql'
    and version='7.2.7'
;
insert into
    postgres_versions
select
    pkey,
    '7.3'
from
    technology_versions
where
    name='postgresql'
    and version='7.3.13'
;
insert into
    postgres_versions
select
    pkey,
    '8.0'
from
    technology_versions
where
    name='postgresql'
    and version='8.0.6'
;
insert into
    postgres_versions
select
    pkey,
    '8.1'
from
    technology_versions
where
    name='postgresql'
    and version='8.1.2'
;
