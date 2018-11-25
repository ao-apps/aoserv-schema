create index "TomcatWorker_name_fkey" on "web/tomcat"."TomcatWorker" (
  "name"
);
create index "TomcatWorker_tomcatSite_fkey" on "web/tomcat"."TomcatWorker" (
  "tomcatSite"
);
