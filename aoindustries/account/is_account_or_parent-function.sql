/**********************************************************************
 *
 * Checks if a <code>account.Account</code> is the same as, or the parent of
 * another <code>account.Account</code>.
 *
 * $1  the accounting code of the account.Account
 * $2  the accounting code of the account.Account or parent
 *
 *********************************************************************/
create or replace function account.is_account_or_parent (text,text)
  returns boolean
  as '
    select
      $1 = $2
      or (
        case when
          (select parent from account."Account" where accounting = $2 ) is null
        then
          false
        else
          account.is_account_or_parent( $1 , (select parent from account."Account" where accounting = $2 ))
        end
      )
    ;
  '
  language 'sql'
  stable
  with(isstrict)
;
