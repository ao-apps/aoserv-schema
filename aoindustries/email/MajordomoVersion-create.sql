create table email."MajordomoVersion" (
  -- TODO: References distribution.SoftwareVersion
  version text
    primary key,
  created timestamp with time zone
    not null
    default now()
);
grant all    on email."MajordomoVersion" to aoadmin;
grant select on email."MajordomoVersion" to aoserv_app;
