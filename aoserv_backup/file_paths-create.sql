/**********************************************************************
 *
 * The <code>file_paths</code> table stores the paths used by
 * <code>file backups</code>.
 *
 * pkey      a generated primary key
 * parent    the pkey of the parent path, the root path points to itself
 * filename  the filename for this path, only the root path may be
 *           empty
 * path      the full path for this file_path, this is the same as the output
 *           of the get_file_path function, but much faster as it is not
 *           computed on the fly
 *
 *********************************************************************/
create sequence file_paths_pkey_seq cycle;
grant all on file_paths_pkey_seq to aoadmin;
grant select, update on file_paths_pkey_seq to aoserv_app;

create table file_paths (
  pkey integer
    default nextval('file_paths_pkey_seq')
    constraint file_paths_pkey primary key,
  parent integer
    not null,
  filename text
    not null,
  path text
    not null
);
grant all on file_paths to aoadmin;
grant select, update, insert, delete on file_paths to aoserv_app;

create or replace function get_file_path0 (integer)
  returns text
  as '
    select \'\'::text;
  '
  language 'sql'
;
create or replace function get_file_path0 (integer)
  returns text
  as '
    select
      case
        when pkey=parent then filename
        else get_file_path0(parent)||\'/\'||filename
      end
    from
      file_paths
    where
      pkey= $1
    ;
  '
  language 'sql'
;
create or replace function get_file_path (integer)
  returns text
  as '
    select
      case
        when pkey=parent then filename||\'/\'
        else get_file_path0(parent)||\'/\'||filename
      end
    from
      file_paths
    where
      pkey= $1
    ;
  '
  language 'sql'
;
