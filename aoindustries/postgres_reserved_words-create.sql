create table postgres_reserved_words (
  word text
    constraint postgres_reserved_words_pkey primary key
);
grant all on postgres_reserved_words to aoadmin;
grant select on postgres_reserved_words to aoserv_app;
