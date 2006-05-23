/***********************************************************************
 *
 * This convenience view puts all the phone numbers in the database in
 * one place.
 *
 **********************************************************************/
create view phone_view as
  select
    t1.business,
    t1.person,
    t1.work,
    t1.cell,
    t1.home,
    t1.fax
  from
    phone_numbers t1
  union select
    t2.name||' ('||t2.accounting||')',
    t2.billing_contact||(case when (t2.billing_contact!=t2.technical_contact) then (' (billing), '||t2.technical_contact||' (techical)') else '' end),
    t2.phone,
    null,
    null,
    t2.fax
  from
    business_profiles t2
  where
    t2.priority=(select max(t3.priority) from business_profiles t3 where t2.accounting=t3.accounting)
  union select
    t5.name||' ('||t5.accounting||')',
    t4.name||' ('||t4.username||')',
    t4.work_phone,
    t4.cell_phone,
    t4.home_phone,
    t4.fax
  from
    business_administrators t4,
    usernames un,
    packages pk,
    business_profiles t5
  where
    t4.username=un.username
    and un.package=pk.name
    and pk.accounting=t5.accounting
    and t5.priority=(select max(t6.priority) from business_profiles t6 where t5.accounting=t6.accounting)
;
grant select on phone_view to aoadmin;
grant select on phone_view to aoserv_app;
