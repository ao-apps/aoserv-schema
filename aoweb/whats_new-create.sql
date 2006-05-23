/**********************************************************************
 *
 * The whats_new table contains all of the entries in the whats new
 * web page.  The description may contain links such as
 * <A href='@com.aoindustries.website.HomePage'>...</A> which will
 * be reconstructed to the proper protocol and URL for the destination
 * WebPage.
 *
 * pkey         a generated primary key
 * time         the time the entry was added
 * description  the description of what is new
 *
 *********************************************************************/
create sequence whats_new_pkey_seq cycle;
grant all on whats_new_pkey_seq to aoadmin;
grant select, update on whats_new_pkey_seq to aoweb_app;

create table whats_new (
  pkey integer
    default nextval('whats_new_pkey_seq')
    not null
    constraint whats_new_pkey
      primary key,
  time timestamp
    not null,
  description text
    not null
);
grant all on whats_new to aoadmin;
grant select, insert, update, delete on whats_new to aoweb_app;
