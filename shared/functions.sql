/*
 * These functions apply to all databases.
 */

/**********************************************************************
 *
 * Takes a host/domain name with up to two periods and switched the
 * order of parts.
 *
 * $1  the host/domain name
 *
 * returns a text with the name parts reversed
 *
 *********************************************************************/
create or replace function pos_period1 (text)
  returns integer
  as '
    select position(\'.\' in $1)
  '
  language 'sql'
;
create or replace function pos_period2 (text)
  returns integer
  as '
    select case when
      position(\'.\' in substring($1 from pos_period1($1)+1))=0
    then
      0
    else
      pos_period1($1)+position(\'.\' in substring($1 from pos_period1($1)+1))
    end
  '
  language 'sql'
;
create or replace function pos_period3 (text)
  returns integer
  as '
    select case when
      position(\'.\' in substring($1 from pos_period2($1)+1))=0
    then
      0
    else
      pos_period2($1)+position(\'.\' in substring($1 from pos_period2($1)+1))
    end
  '
  language 'sql'
;
create or replace function pos_period4 (text)
  returns integer
  as '
    select case when
      position(\'.\' in substring($1 from pos_period3($1)+1))=0
    then
      0
    else
      pos_period3($1)+position(\'.\' in substring($1 from pos_period3($1)+1))
    end
  '
  language 'sql'
;
create or replace function pos_period5 (text)
  returns integer
  as '
    select case when
      position(\'.\' in substring($1 from pos_period4($1)+1))=0
    then
      0
    else
      pos_period4($1)+position(\'.\' in substring($1 from pos_period4($1)+1))
    end
  '
  language 'sql'
;
create or replace function pos_period6 (text)
  returns integer
  as '
    select case when
      position(\'.\' in substring($1 from pos_period5($1)+1))=0
    then
      0
    else
      pos_period5($1)+position(\'.\' in substring($1 from pos_period5($1)+1))
    end
  '
  language 'sql'
;
create or replace function reverse_hostname (text)
  returns text
  as '
    select
      case when
        pos_period1($1)=0
      then
        $1
      else
        case when
          pos_period2($1)=0
        then
          substring($1 from pos_period1($1)+1)
          || \'.\'
          || substring($1 from 1 for pos_period1($1)-1)
        else
          case when
            pos_period3($1)=0
          then
            substring($1 from pos_period2($1)+1)
            || \'.\'
            || substring($1 from pos_period1($1)+1 for pos_period2($1)-pos_period1($1)-1)
            || \'.\'
            || substring($1 from 1 for pos_period1($1)-1)
          else
            case when
              pos_period4($1)=0
            then
              substring($1 from pos_period3($1)+1)
              || \'.\'
              || substring($1 from pos_period2($1)+1 for pos_period3($1)-pos_period2($1)-1)
              || \'.\'
              || substring($1 from pos_period1($1)+1 for pos_period2($1)-pos_period1($1)-1)
              || \'.\'
              || substring($1 from 1 for pos_period1($1)-1)
            else
              case when
                pos_period5($1)=0
              then
                substring($1 from pos_period4($1)+1)
                || \'.\'
                || substring($1 from pos_period3($1)+1 for pos_period4($1)-pos_period3($1)-1)
                || \'.\'
                || substring($1 from pos_period2($1)+1 for pos_period3($1)-pos_period2($1)-1)
                || \'.\'
                || substring($1 from pos_period1($1)+1 for pos_period2($1)-pos_period1($1)-1)
                || \'.\'
                || substring($1 from 1 for pos_period1($1)-1)
              else
                case when
                  pos_period6($1)=0
                then
                  substring($1 from pos_period5($1)+1)
                  || \'.\'
                  || substring($1 from pos_period4($1)+1 for pos_period5($1)-pos_period4($1)-1)
                  || \'.\'
                  || substring($1 from pos_period3($1)+1 for pos_period4($1)-pos_period3($1)-1)
                  || \'.\'
                  || substring($1 from pos_period2($1)+1 for pos_period3($1)-pos_period2($1)-1)
                  || \'.\'
                  || substring($1 from pos_period1($1)+1 for pos_period2($1)-pos_period1($1)-1)
                  || \'.\'
                  || substring($1 from 1 for pos_period1($1)-1)
                else
                  $1
                end
              end
            end
          end
        end
      end
  '
  language 'sql'
;


/**********************************************************************
 *
 * Zero pads an IP address for accurate lexical sorting.
 *
 * $1  the IP address
 *
 * returns the IP address in xxx.xxx.xxx.xxx form, zero padded
 *
 *********************************************************************/
create or replace function ip_octet1 (text)
  returns text
  as '
    select substring($1 from 1 for position(\'.\' in $1)-1)
  '
  language 'sql'
;
create or replace function ip_octet2 (text)
  returns text
  as '
    select substring(substring($1 from position(\'.\' in $1)+1) from 1 for position(\'.\' in substring($1 from position(\'.\' in $1)+1))-1)
  '
  language 'sql'
;
create or replace function ip_octet3 (text)
  returns text
  as '
    select substring(
      $1 from
        length(ip_octet1($1))+1+length(ip_octet2($1))+2
      for
        position(
          \'.\' in
          substring(
            $1 from
              length(ip_octet1($1))+1+length(ip_octet2($1))+2
          )
        )-1
    )
  '
  language 'sql'
;
create or replace function ip_octet4 (text)
  returns text
  as '
    select substring(
      $1 from
        length(ip_octet1($1))+1+length(ip_octet2($1))+1+length(ip_octet3($1))+2
    )
  '
  language 'sql'
;
create or replace function pad_ip_address (text)
  returns text
  as '
    select
      repeat(\'0\', 3-length(ip_octet1($1))) || ip_octet1($1)
      || \'.\'
      || repeat(\'0\', 3-length(ip_octet2($1))) || ip_octet2($1)
      || \'.\'
      || repeat(\'0\', 3-length(ip_octet3($1))) || ip_octet3($1)
      || \'.\'
      || repeat(\'0\', 3-length(ip_octet4($1))) || ip_octet4($1)
  '
  language 'sql'
;

create or replace function hexchar_to_int8 (text)
  returns int8
  as '
    select
      case
        when $1 in (\'0\', \'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\', \'9\') then $1::int8
        when $1 in (\'a\', \'A\') then 10::int8
        when $1 in (\'b\', \'B\') then 11::int8
        when $1 in (\'c\', \'C\') then 12::int8
        when $1 in (\'d\', \'D\') then 13::int8
        when $1 in (\'e\', \'E\') then 14::int8
        when $1 in (\'f\', \'F\') then 15::int8
      end
    ;
  '
  language 'sql'
  with(isstrict)
;

create or replace function hex_to_int8 (text)
  returns int8
  as '
    select
      (hexchar_to_int8(substring( $1 from 1 for 1)) << 60)
      | (hexchar_to_int8(substring( $1 from 2 for 1)) << 56)
      | (hexchar_to_int8(substring( $1 from 3 for 1)) << 52)
      | (hexchar_to_int8(substring( $1 from 4 for 1)) << 48)
      | (hexchar_to_int8(substring( $1 from 5 for 1)) << 44)
      | (hexchar_to_int8(substring( $1 from 6 for 1)) << 40)
      | (hexchar_to_int8(substring( $1 from 7 for 1)) << 36)
      | (hexchar_to_int8(substring( $1 from 8 for 1)) << 32)
      | (hexchar_to_int8(substring( $1 from 9 for 1)) << 28)
      | (hexchar_to_int8(substring( $1 from 10 for 1)) << 24)
      | (hexchar_to_int8(substring( $1 from 11 for 1)) << 20)
      | (hexchar_to_int8(substring( $1 from 12 for 1)) << 16)
      | (hexchar_to_int8(substring( $1 from 13 for 1)) << 12)
      | (hexchar_to_int8(substring( $1 from 14 for 1)) << 8)
      | (hexchar_to_int8(substring( $1 from 15 for 1)) << 4)
      | hexchar_to_int8(substring( $1 from 16 for 1))
    ;
  '
  language 'sql'
  with(isstrict)
;
