/**********************************************************************
 *
 * Takes a host/domain name and switches the order by labels split by
 * periods (.)
 *
 * $1  the host/domain name
 *
 * returns a text with the name parts reversed
 *
 *********************************************************************/
-- TODO: Rename to "Host.reverse_hostname"?
create or replace function net.reverse_hostname (text)
  returns text
  as '
    select array_to_string(net.array_reverse(string_to_array($1, ''.'')), ''.'');
  '
  language 'sql'
  strict
  immutable
;
