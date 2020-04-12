/**********************************************************************
 *
 * Finds the first business that is not canceled, searching up the parents.
 * If the business itself is not canceled, it is returned.
 *
 * $1  the accounting code of the business
 *
 *********************************************************************/
create or replace function "account.management"."Account.findBusinessNotCanceled" (text)
  returns text
  as '
    select
      case
        when (select canceled is null from account."Account" where accounting = $1 ) then $1
        when (select parent is null from account."Account" where accounting = $1 ) then null
        else "account.management"."Account.findBusinessNotCanceled"( (select parent from account."Account" where accounting = $1 ))
      end
    ;
  '
  language 'sql'
  stable
  with(isstrict)
;
