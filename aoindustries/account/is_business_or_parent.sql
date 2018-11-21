/**********************************************************************
 *
 * Checks if a <code>business</code> is the same as, or the parent of
 * another <code>business</code>.
 *
 * $1  the accounting code of the business
 * $2  the accounting code of the business or parent
 *
 *********************************************************************/
create or replace function account.is_business_or_parent (text,text)
  returns boolean
  as '
    select
      $1 = $2
      or (
        case when
          (select parent from businesses where accounting = $2 ) is null
        then
          false
        else
          account.is_business_or_parent( $1 , (select parent from businesses where accounting = $2 ))
        end
      )
    ;
  '
  language 'sql'
  stable
  with(isstrict)
;
