/**********************************************************************
 *
 * Finds the first business that is not canceled, searching up the parents.
 * If the business itself is not canceled, it is returned.
 *
 * $1  the accounting code of the business
 *
 *********************************************************************/
create or replace function management."find-business-not-canceled" (text)
  returns text
  as '
    select
      case
        when (select canceled is null from public.businesses where accounting = $1 ) then $1
        when (select parent is null from public.businesses where accounting = $1 ) then null
        else management."find-business-not-canceled"( (select parent from businesses where accounting = $1 ))
      end
    ;
  '
  language 'sql'
  stable
  with(isstrict)
;
