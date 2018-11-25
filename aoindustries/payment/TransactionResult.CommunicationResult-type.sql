-- Matches enum com.aoindustries.creditcards.TransactionResult.CommunicationResult
CREATE TYPE payment."TransactionResult.CommunicationResult" AS ENUM (
  'LOCAL_ERROR',
  'IO_ERROR',
  'GATEWAY_ERROR',
  'SUCCESS'
);
