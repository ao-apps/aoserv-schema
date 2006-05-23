create table mysql_reserved_words (
  word text
    constraint mysql_reserved_words_pkey primary key
);
grant all on mysql_reserved_words to aoadmin;
grant select on mysql_reserved_words to aoserv_app;
