CREATE TYPE payment."AuthorizationResult.ApprovalResult" AS ENUM (
  'APPROVED',
  'DECLINED',
  'HOLD'
);
COMMENT ON TYPE payment."AuthorizationResult.AvsResult" IS
'Matches enum com.aoindustries.creditcards.AuthorizationResult.ApprovalResult';
