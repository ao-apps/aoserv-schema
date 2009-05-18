create sequence ticket_actions_pkey_seq cycle;
grant all on ticket_actions_pkey_seq to aoadmin;
grant select, update on ticket_actions_pkey_seq to aoserv_app;

create table ticket_actions (
    pkey integer default nextval('ticket_actions_pkey_seq') primary key,
    ticket integer not null,
    administrator text,
    time timestamp not null default now(),
    action_type text not null,
    old_value text,
    from_address text -- The from email address, if submitted by email
      check(from_address is null or from_address=trim(from_address)),
    summary text not null,
    details text, -- Directly submitted or converted from email, cannot be changed
    raw_email text -- Only available when submitted via email
    --check (
        --case
            --when action_type='closed'
            --    (TODO)
            --else
                -- Unexpected action_type
        --        false
        --end
    --)
);
grant all on ticket_actions to aoadmin;
grant select, insert on ticket_actions to aoserv_app;
