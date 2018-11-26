create schema if not exists distribution;

comment on schema distribution is 'Linux distributions managed by the AOServ Platform';

grant all   on schema distribution to aoadmin;
grant usage on schema distribution to aoserv_app;

-- TODO: Make a new role for the update commands run from within the distro templates
--       Restrict to just this one schema and with minimal permissions.
--       Revoke the ssh key from "aoadmin".

