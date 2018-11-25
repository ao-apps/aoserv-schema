-- Matches enum com.aoindustries.creditcards.AuthorizationResult.AvsResult
CREATE TYPE payment."AuthorizationResult.AvsResult" AS ENUM (
  'ADDRESS_NOT_PROVIDED',
  'ADDRESS_Y_ZIP_9',
  'ADDRESS_Y_ZIP_5',
  'ADDRESS_Y_ZIP_N',
  'ADDRESS_N_ZIP_9',
  'ADDRESS_N_ZIP_5',
  'ADDRESS_N_ZIP_N',
  'UNAVAILABLE',
  'RETRY',
  'ERROR',
  'SERVICE_NOT_SUPPORTED',
  'NON_US_CARD',
  'NOT_APPLICABLE',
  'UNKNOWN'
);
