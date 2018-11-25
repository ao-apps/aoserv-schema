-- TODO: Generate these client-side algorithmically, like how we switched NetPort and LinuxId
--       Alternatively, allow named workers, but with careful naming constraints.
--       The auto-generation of these worker names could simply use the same algorithm
--       Used to initially populate this table.
create table "web/tomcat"."TomcatWorkerName" (
  code character(2)
    primary key
);
grant all    on "web/tomcat"."TomcatWorkerName" to aoadmin;
grant select on "web/tomcat"."TomcatWorkerName" to aoserv_app;
