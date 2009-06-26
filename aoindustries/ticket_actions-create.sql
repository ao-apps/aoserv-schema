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
grant select, insert on ticket_actions to aoserv_app;



/*create index actions_temp_index on actions_20090611 (ticket_id, pkey);


update actions_20090611 set old_value='PRIVATE_CART_TEST' where old_value='PSC_TEST';
-- update actions_20090611 set new_value='PRIVATE_CART_TEST' where new_value='PSC_TEST';
update actions_20090611 set old_value='BENCHMARK' where old_value='EDRUGSTORE_BENCHMARK';
-- update actions_20090611 set new_value='BENCHMARK' where new_value='EDRUGSTORE_BENCHMARK';
update actions_20090611 set old_value='EDRUGSTORE_DEV1' where old_value='EDRUGSTORE_DEVELOPMENT';
-- update actions_20090611 set new_value='EDRUGSTORE_DEV1' where new_value='EDRUGSTORE_DEVELOPMENT';
update actions_20090611 set old_value='PRIVATE_CART_DEV1' where old_value='PRIVATE_CART_DEVELOPMENT';
-- update actions_20090611 set new_value='PRIVATE_CART_DEV1' where new_value='PRIVATE_CART_DEVELOPMENT';


insert into
    ticket_actions
select
    *
from
    (
        select
            ac.pkey * 2 as pkey,
            ac.ticket_id,
            ac.administrator,
            ac.time,
            case
                when ac.action_type='SB' then 'set_business'
                when ac.action_type='SE' then 'set_contact_emails'
                when ac.action_type='SP' then 'set_contact_phone_numbers'
                when ac.action_type='CP' then 'set_client_priority'
                when ac.action_type='WK' then 'add_annotation'
                when ac.action_type in ('AH', 'AK', 'BO', 'CH', 'CK', 'CO', 'RE') then 'set_status'
                when ac.action_type='AP' then 'set_admin_priority'
                when ac.action_type='AS' then 'assign'
                when ac.action_type='TY' then 'set_category'
                else ('NOT FOUND: ' || ac.action_type)
            end as action_type,
            -- set_business
            case when ac.action_type='SB' then ac.old_value else null end as old_accounting,
            case when ac.action_type='SB' then (
                select new_accounting_possibilities.new_accounting from (
                    -- Use the next old_value from set_business with same ticket and higher pkey
                    select ac2.pkey, ac2.old_value as new_accounting from actions_20090611 ac2 where ac.ticket_id=ac2.ticket_id and ac2.action_type='SB' and ac2.pkey>ac.pkey
                    union all select 1000000, accounting from tickets ti where ac.ticket_id=ti.pkey
                ) new_accounting_possibilities order by new_accounting_possibilities.pkey limit 1
            ) else null end as new_accounting,
            -- set_client_priority and set_admin_priority
            case when ac.action_type in ('CP', 'AP') then ac.old_value else null end as old_priority,
            case
                when ac.action_type='CP' then (
                    select new_priority_possibilities.new_priority from (
                        -- Use the next old_value from set_business with same ticket and higher pkey
                        select ac2.pkey, ac2.old_value as new_priority from actions_20090611 ac2 where ac.ticket_id=ac2.ticket_id and ac2.action_type='CP' and ac2.pkey>ac.pkey
                        union all select 1000000, client_priority from tickets ti where ac.ticket_id=ti.pkey
                    ) new_priority_possibilities order by new_priority_possibilities.pkey limit 1
                )
                when ac.action_type='AP' then (
                    select new_priority_possibilities.new_priority from (
                        -- Use the next old_value from set_business with same ticket and higher pkey
                        select ac2.pkey, ac2.old_value as new_priority from actions_20090611 ac2 where ac.ticket_id=ac2.ticket_id and ac2.action_type='AP' and ac2.pkey>ac.pkey
                        union all select 1000000, admin_priority from tickets ti where ac.ticket_id=ti.pkey
                    ) new_priority_possibilities order by new_priority_possibilities.pkey limit 1
                )
                else null
            end as new_priority,
            -- set_status
            case when ac.action_type in ('AH', 'AK', 'BO', 'CH', 'CK', 'CO', 'RE') then (
                case
                    -- Starts in Open state
                    when (
                        select ac2.pkey
                        from actions_20090611 ac2
                        where ac.ticket_id=ac2.ticket_id and ac2.pkey<ac.pkey and ac2.action_type in ('AH', 'AK', 'BO', 'CH', 'CK', 'CO', 'RE')
                        limit 1
                    ) is null
                    then 'open'
                else
                    -- The old_status is the resulting status from the previous status-changing action
                    (
                        select
                            case
                                when ac2.action_type='AH' then 'hold'
                                when ac2.action_type='AK' then 'deleted'
                                when ac2.action_type='BO' then 'bounced'
                                when ac2.action_type='CH' then 'hold'
                                when ac2.action_type='CK' then 'deleted'
                                when ac2.action_type='CO' then 'closed'
                                when ac2.action_type='RE' then 'open'
                                else 'BAD'
                            end
                        from actions_20090611 ac2
                        where ac.ticket_id=ac2.ticket_id and ac2.pkey<ac.pkey and ac2.action_type in ('AH', 'AK', 'BO', 'CH', 'CK', 'CO', 'RE')
                        order by ac2.pkey desc
                        limit 1
                    )
                end
            ) else null end as old_status,
            case
                when ac.action_type='AH' then 'hold'
                when ac.action_type='AK' then 'deleted'
                when ac.action_type='BO' then 'bounced'
                when ac.action_type='CH' then 'hold'
                when ac.action_type='CK' then 'deleted'
                when ac.action_type='CO' then 'closed'
                when ac.action_type='RE' then 'open'
                else null
            end as new_status,
            -- assign
            case when ac.action_type='AS' then ac.old_value else null end as old_assigned_to,
            case when ac.action_type='AS' then (
                select new_assigned_to_possibilities.new_assigned_to from (
                    -- Use the next old_value from set_business with same ticket and higher pkey
                    select ac2.pkey, ac2.old_value as new_assigned_to from actions_20090611 ac2 where ac.ticket_id=ac2.ticket_id and ac2.action_type='AS' and ac2.pkey>ac.pkey
                    union all select 1000000, assigned_to from tickets_20090611 ti where ac.ticket_id=ti.pkey
                ) new_assigned_to_possibilities order by new_assigned_to_possibilities.pkey limit 1
            ) else null end as new_assigned_to,
            -- set_category
            case
                when ac.action_type='TY' then
                    case
                        when ac.old_value='Accounting' then '19'
                        when ac.old_value='AOServ' then '92'
                        when ac.old_value='CGI' then '23'
                        when ac.old_value='Control Panel' then '109'
                        when ac.old_value='CVS' then '55'
                        when ac.old_value='DNS/Host Names' then '57'
                        when ac.old_value='Email' then '1'
                        when ac.old_value='InterBase' then '18'
                        when ac.old_value='Java Virtual Machine' then '24'
                        when ac.old_value='Logging/Stats' then '64'
                        when ac.old_value='MySQL' then '13'
                        when ac.old_value='NOTE: Install Note' then null
                        when ac.old_value='Performance' then '98'
                        when ac.old_value='PHP' then '36'
                        when ac.old_value='PostgreSQL' then '16'
                        when ac.old_value='Shell Account' then '44'
                        when ac.old_value='Tickets' then '102'
                        when ac.old_value='TODO: Event' then null
                        when ac.old_value='TODO: Hardware' then '104'
                        when ac.old_value='TODO: Monitoring' then '100'
                        when ac.old_value='TODO: Payment' then '21'
                        when ac.old_value='TODO: Reliability' then '99'
                        when ac.old_value='TODO: Security' then '66'
                        when ac.old_value='TODO: Support Tools' then '101'
                        when ac.old_value='Websites' then '49'
                        when ac.old_value='XML' then null
                        when ac.old_value='' or ac.old_value is null then null
                        else ac.old_value -- Cause error
                    end :: integer
                else null
            end as old_category,
            case when ac.action_type='TY' then (
                select new_category_possibilities.new_category from (
                    -- Use the next old_value from set_business with same ticket and higher pkey
                    select
                        ac2.pkey,
                        case
                            when ac2.old_value='Accounting' then '19'
                            when ac2.old_value='AOServ' then '92'
                            when ac2.old_value='CGI' then '23'
                            when ac2.old_value='Control Panel' then '109'
                            when ac2.old_value='CVS' then '55'
                            when ac2.old_value='DNS/Host Names' then '57'
                            when ac2.old_value='Email' then '1'
                            when ac2.old_value='InterBase' then '18'
                            when ac2.old_value='Java Virtual Machine' then '24'
                            when ac2.old_value='Logging/Stats' then '64'
                            when ac2.old_value='MySQL' then '13'
                            when ac2.old_value='NOTE: Install Note' then null
                            when ac2.old_value='Performance' then '98'
                            when ac2.old_value='PHP' then '36'
                            when ac2.old_value='PostgreSQL' then '16'
                            when ac2.old_value='Shell Account' then '44'
                            when ac2.old_value='Tickets' then '102'
                            when ac2.old_value='TODO: Event' then null
                            when ac2.old_value='TODO: Hardware' then '104'
                            when ac2.old_value='TODO: Monitoring' then '100'
                            when ac2.old_value='TODO: Payment' then '21'
                            when ac2.old_value='TODO: Reliability' then '99'
                            when ac2.old_value='TODO: Security' then '66'
                            when ac2.old_value='TODO: Support Tools' then '101'
                            when ac2.old_value='Websites' then '49'
                            when ac2.old_value='XML' then null
                            when ac2.old_value='' or ac.old_value is null then null
                            else ac2.old_value -- Cause error
                        end :: integer as new_category
                    from actions_20090611 ac2
                    where ac.ticket_id=ac2.ticket_id and ac2.action_type='TY' and ac2.pkey>ac.pkey
                    union all select 1000000, category from tickets ti where ac.ticket_id=ti.pkey
                ) new_category_possibilities order by new_category_possibilities.pkey limit 1
            ) else null end as new_category,
            -- any others
            case when ac.action_type in ('SE', 'SP') then ac.old_value else null end as old_value,
            case
                when ac.action_type='SE' then (
                    select new_value_possibilities.new_value from (
                        -- Use the next old_value from set_business with same ticket and higher pkey
                        select ac2.pkey, ac2.old_value as new_value from actions_20090611 ac2 where ac.ticket_id=ac2.ticket_id and ac2.action_type='SE' and ac2.pkey>ac.pkey
                        union all select 1000000, contact_emails from tickets ti where ac.ticket_id=ti.pkey
                    ) new_value_possibilities order by new_value_possibilities.pkey limit 1
                )
                when ac.action_type='SP' then (
                    select new_value_possibilities.new_value from (
                        -- Use the next old_value from set_business with same ticket and higher pkey
                        select ac2.pkey, ac2.old_value as new_value from actions_20090611 ac2 where ac.ticket_id=ac2.ticket_id and ac2.action_type='SP' and ac2.pkey>ac.pkey
                        union all select 1000000, contact_phone_numbers from tickets ti where ac.ticket_id=ti.pkey
                    ) new_value_possibilities order by new_value_possibilities.pkey limit 1
                )
                else null
            end as new_value,
            null as from_address,
            case when ac.action_type='WK' then '(No summary)' else null end as summary,
            case when ac.action_type='WK' then ac.comments else null end as details,
            null as raw_email
        from
            actions_20090611 ac

        -- Add in add_annotation entries for all status-changing action types
        union all select
            ac.pkey * 2 - 1 as pkey, -- Annotations occur before status change
            ac.ticket_id,
            ac.administrator,
            ac.time,
            'add_annotation',
            -- set_business
            null,
            null,
            -- set_client_priority and set_admin_priority
            null,
            null,
            -- set_status
            null,
            null,
            -- assign
            null,
            null,
            -- set_category
            null,
            null,
            -- any others
            null as old_value,
            null as new_value,
            null as from_address,
            '(No summary)' as summary,
            ac.comments,
            null as raw_email
        from
            actions_20090611 ac
        where
            ac.action_type in ('AH', 'AK', 'BO', 'CH', 'CK', 'CO', 'RE')
    ) innerselect
    where
        (old_status is null or new_status is null or old_status!=new_status) -- Had some duplicate close entries
        and (not (action_type='assign' and old_assigned_to is null and new_assigned_to is null))
        and (old_priority is null or new_priority is null or old_priority!=new_priority) -- Had some duplicate close entries
        and (old_assigned_to is null or new_assigned_to is null or old_assigned_to!=new_assigned_to) -- Had some duplicate close entries
        and (old_value is null or new_value is null or old_value!=new_value) -- Had some duplicate close entries
    order by ticket_id, pkey
;

select setval('ticket_actions_pkey_seq', 14769);
*/
