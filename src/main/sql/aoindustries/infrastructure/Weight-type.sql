CREATE DOMAIN infrastructure."Weight" AS smallint
  CHECK (value in (1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024));
COMMENT ON DOMAIN infrastructure."Weight" IS
'Weights are powers of two, between 1 and 1024, that represent how much of a
resource is allocated.  1024 represents 100% of the resource.  Powers of two are
selected because it is simple, and always possible, to split and combine them to
total 1024 (100%).';
