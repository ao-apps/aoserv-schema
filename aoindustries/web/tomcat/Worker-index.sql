create index "Worker_name_fkey" on "web/tomcat"."Worker" (
  "name"
);
create index "Worker_tomcatSite_fkey" on "web/tomcat"."Worker" (
  "tomcatSite"
);
