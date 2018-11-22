create table email."SpamAssassinMode" (
  "name" text
    primary key,
  display text
    not null,
  sort_order integer
    not null
);
grant all    on email."SpamAssassinMode" to aoadmin;
grant select on email."SpamAssassinMode" to aoserv_app;
