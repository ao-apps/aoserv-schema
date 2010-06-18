create sequence ticket_actions_pkey_seq cycle;
grant all on ticket_actions_pkey_seq to aoadmin;
grant select, update on ticket_actions_pkey_seq to aoserv_app;

create table ticket_actions (
    pkey integer default nextval('ticket_actions_pkey_seq') primary key,
    ticket integer not null,
    administrator text,
    time timestamp not null default now(),
    action_type text not null,
    -- set_business
    old_accounting text,
    new_accounting text,
    -- set_client_priority and set_admin_priority
    old_priority text,
    new_priority text,
    -- set_type
    old_type text,
    new_type text,
    -- set_status
    old_status text,
    new_status text,
    -- assign
    old_assigned_to text,
    new_assigned_to text,
    -- set_category
    old_category integer,
    new_category integer,
    -- any others
    old_value text,
    new_value text,
    -- remaining columns
    from_address text -- The from email address, if submitted by email
      check(from_address is null or from_address=trim(from_address)),
    summary text,
    details text, -- Directly submitted or converted from email, cannot be changed
    raw_email text, -- Only available when submitted via email
    check (
        case
            when action_type='set_business' then
                (
                    administrator is not null
                    and (old_accounting is not null or new_accounting is not null) -- Must not both be null
                    and (old_accounting is null or new_accounting is null or old_accounting!=new_accounting) -- Must not have same value
                    and old_priority is null
                    and new_priority is null
                    and old_type is null
                    and new_type is null
                    and old_status is null
                    and new_status is null
                    and old_assigned_to is null
                    and new_assigned_to is null
                    and old_category is null
                    and new_category is null
                    and old_value is null
                    and new_value is null
                    and from_address is null -- Can't change through email
                    and summary is null -- Generated
                    and details is null -- No details
                    and raw_email is null -- Can't change through email
                )
            else true
        end
    ),
    check (
        case
            when action_type='set_contact_emails' then
                (
                    administrator is not null
                    and old_accounting is null
                    and new_accounting is null
                    and old_priority is null
                    and new_priority is null
                    and old_type is null
                    and new_type is null
                    and old_status is null
                    and new_status is null
                    and old_assigned_to is null
                    and new_assigned_to is null
                    and old_category is null
                    and new_category is null
                    and (old_value is not null and new_value is not null) -- Neither may be null
                    and (old_value!=new_value) -- Must not have same value
                    and from_address is null -- Can't change through email
                    and summary is null -- Generated
                    and details is null -- No details
                    and raw_email is null -- Can't change through email
                )
            else true
        end
    ),
    check (
        case
            when action_type='set_contact_phone_numbers' then
                (
                    administrator is not null
                    and old_accounting is null
                    and new_accounting is null
                    and old_priority is null
                    and new_priority is null
                    and old_type is null
                    and new_type is null
                    and old_status is null
                    and new_status is null
                    and old_assigned_to is null
                    and new_assigned_to is null
                    and old_category is null
                    and new_category is null
                    and (old_value is not null and new_value is not null) -- Neither may be null
                    and (old_value!=new_value) -- Must not have same value
                    and from_address is null -- Can't change through email
                    and summary is null -- Generated
                    and details is null -- No details
                    and raw_email is null -- Can't change through email
                )
            else true
        end
    ),
    check (
        case
            when action_type='set_client_priority' then
                (
                    administrator is not null
                    and old_accounting is null
                    and new_accounting is null
                    and (old_priority is not null and new_priority is not null) -- Neither may be null
                    and (old_priority!=new_priority) -- Must not have same value
                    and old_type is null
                    and new_type is null
                    and old_status is null
                    and new_status is null
                    and old_assigned_to is null
                    and new_assigned_to is null
                    and old_category is null
                    and new_category is null
                    and old_value is null
                    and new_value is null
                    and from_address is null -- Can't change through email
                    and summary is null -- Generated
                    and details is null -- No details
                    and raw_email is null -- Can't change through email
                )
            else true
        end
    ),
    check (
        case
            when action_type='set_summary' then
                (
                    administrator is not null
                    and old_accounting is null
                    and new_accounting is null
                    and old_priority is null
                    and new_priority is null
                    and old_type is null
                    and new_type is null
                    and old_status is null
                    and new_status is null
                    and old_assigned_to is null
                    and new_assigned_to is null
                    and old_category is null
                    and new_category is null
                    and (old_value is not null and new_value is not null) -- Neither may be null
                    and (old_value!=new_value) -- Must not have same value
                    and from_address is null -- Can't change through email
                    and summary is null -- Generated
                    and details is null -- No details
                    and raw_email is null -- Can't change through email
                )
            else true
        end
    ),
    check (
        case
            when action_type='add_annotation' then
                (
                    old_accounting is null
                    and new_accounting is null
                    and old_priority is null
                    and new_priority is null
                    and old_type is null
                    and new_type is null
                    and old_status is null
                    and new_status is null
                    and old_assigned_to is null
                    and new_assigned_to is null
                    and old_category is null
                    and new_category is null
                    and old_value is null
                    and new_value is null
                    and summary is not null
                )
            else true
        end
    ),
    check (
        case
            when action_type='set_type' then
                (
                    administrator is not null
                    and old_accounting is null
                    and new_accounting is null
                    and old_priority is null
                    and new_priority is null
                    and (old_type is not null and new_type is not null) -- Neither may be null
                    and (old_type!=new_type) -- Must not have same value
                    and old_status is null
                    and new_status is null
                    and old_assigned_to is null
                    and new_assigned_to is null
                    and old_category is null
                    and new_category is null
                    and old_value is null
                    and new_value is null
                    and from_address is null -- Can't change through email
                    and summary is null -- Generated
                    and details is null -- No details
                    and raw_email is null -- Can't change through email
                )
            else true
        end
    ),
    check (
        case
            when action_type='set_status' then
                (
                    administrator is not null
                    and old_accounting is null
                    and new_accounting is null
                    and old_priority is null
                    and new_priority is null
                    and old_type is null
                    and new_type is null
                    and (old_status is not null and new_status is not null) -- Neither may be null
                    and (old_status!=new_status) -- Must not have same value
                    and old_assigned_to is null
                    and new_assigned_to is null
                    and old_category is null
                    and new_category is null
                    and old_value is null
                    and new_value is null
                    and from_address is null -- Can't change through email
                    and summary is null -- Generated
                    and details is null -- No details
                    and raw_email is null -- Can't change through email
                )
            else true
        end
    ),
    check (
        case
            when action_type='set_admin_priority' then
                (
                    administrator is not null
                    and old_accounting is null
                    and new_accounting is null
                    and (old_priority is not null or new_priority is not null) -- Must not both be null
                    and (old_priority is null or new_priority is null or old_priority!=new_priority) -- Must not have same value
                    and old_type is null
                    and new_type is null
                    and old_status is null
                    and new_status is null
                    and old_assigned_to is null
                    and new_assigned_to is null
                    and old_category is null
                    and new_category is null
                    and old_value is null
                    and new_value is null
                    and from_address is null -- Can't change through email
                    and summary is null -- Generated
                    and details is null -- No details
                    and raw_email is null -- Can't change through email
                )
            else true
        end
    ),
    check (
        case
            when action_type='assign' then
                (
                    administrator is not null
                    and old_accounting is null
                    and new_accounting is null
                    and old_priority is null
                    and new_priority is null
                    and old_type is null
                    and new_type is null
                    and old_status is null
                    and new_status is null
                    and (old_assigned_to is not null or new_assigned_to is not null) -- Must not both be null
                    and (old_assigned_to is null or new_assigned_to is null or old_assigned_to!=new_assigned_to) -- Must not have same value
                    and old_category is null
                    and new_category is null
                    and old_value is null
                    and new_value is null
                    and from_address is null -- Can't change through email
                    and summary is null -- Generated
                    and details is null -- No details
                    and raw_email is null -- Can't change through email
                )
            else true
        end
    ),
    check (
        case
            when action_type='set_category' then
                (
                    administrator is not null
                    and old_accounting is null
                    and new_accounting is null
                    and old_priority is null
                    and new_priority is null
                    and old_type is null
                    and new_type is null
                    and old_status is null
                    and new_status is null
                    and old_assigned_to is null
                    and new_assigned_to is null
                    and (old_category is not null or new_category is not null) -- Must not both be null
                    and (old_category is null or new_category is null or old_category!=new_category) -- Must not have same value
                    and old_value is null
                    and new_value is null
                    and from_address is null -- Can't change through email
                    and summary is null -- Generated
                    and details is null -- No details
                    and raw_email is null -- Can't change through email
                )
            else true
        end
    ),
    check (
        case
            when action_type='set_internal_notes' then
                (
                    administrator is not null
                    and old_accounting is null
                    and new_accounting is null
                    and old_priority is null
                    and new_priority is null
                    and old_type is null
                    and new_type is null
                    and old_status is null
                    and new_status is null
                    and old_assigned_to is null
                    and new_assigned_to is null
                    and old_category is null
                    and new_category is null
                    and (old_value is not null and new_value is not null) -- Neither may be null
                    and (old_value!=new_value) -- Must not have same value
                    and from_address is null -- Can't change through email
                    and summary is null -- Generated
                    and details is null -- No details
                    and raw_email is null -- Can't change through email
                )
            else true
        end
    )
--            else
--                -- Unexpected action_type
--                false
--        end
--    )
);
grant all on ticket_actions to aoadmin;
grant select, insert, delete on ticket_actions to aoserv_app;
