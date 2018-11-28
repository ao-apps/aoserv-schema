CREATE TYPE payment."AuthorizationResult.CvvResult" AS ENUM (
  'MATCH',
  'NO_MATCH',
  'NOT_PROCESSED',
  'CVV2_NOT_PROVIDED_BY_MERCHANT',
  'NOT_SUPPORTED_BY_ISSUER',
  'UNKNOWN'
);
COMMENT ON TYPE payment."AuthorizationResult.CvvResult" IS
'Matches enum com.aoindustries.creditcards.AuthorizationResult.CvvResult';
