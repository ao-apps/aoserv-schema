CREATE TYPE payment."TransactionResult.CommunicationResult" AS ENUM (
  'LOCAL_ERROR',
  'IO_ERROR',
  'GATEWAY_ERROR',
  'SUCCESS'
);
COMMENT ON TYPE payment."TransactionResult.CommunicationResult" IS
'Matches enum com.aoindustries.creditcards.TransactionResult.CommunicationResult';
