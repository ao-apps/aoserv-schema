insert into resources values(
  1,
  null,
  'business',
  now(),
  'orion',
  null,
  now()
);
SELECT setval ('"resources_pkey_seq"', 2, true);
