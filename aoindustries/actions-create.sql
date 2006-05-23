create sequence actions_pkey_seq cycle;   
grant all on actions_pkey_seq to aoadmin;
grant select, update on actions_pkey_seq to aoserv_app;

create table actions (
    pkey              integer   default nextval('actions_pkey_seq')
                                constraint actions_pkey primary key,
    ticket_id         integer,
    administrator     text              not null,
    time              timestamp     not null           default now(),
    action_type       text               not null,
    old_value         text,
    comments          text
);
grant all on actions to aoadmin;
grant select, insert on actions to aoserv_app;
