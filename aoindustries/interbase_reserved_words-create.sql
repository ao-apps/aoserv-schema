create table interbase_reserved_words (
  word text
    not null
    constraint interbase_reserved_words_pkey primary key
);
grant all on interbase_reserved_words to aoadmin;
grant select on interbase_reserved_words to aoserv_app;
