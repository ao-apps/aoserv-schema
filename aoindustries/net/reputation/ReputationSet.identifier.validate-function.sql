/*
Checks a reputation identifier.

Returns NULL when valid.
Returns a description when invalid.

ipset has maximum name length of 31, and we prefix four characters, leaving 27 characters max.
  Prefixes:
    IpReputationSet:
      character 0: 'R': Reputation
      character 1: 'G': Good,      'B': Bad
      character 2: 'U': Uncertain, 'D': Definite, 'N': Network
      character 3: '_': Separator, 'N': New list (for loading while old copy active)
    IpSet:
      character 0: 'I': IP Set
      character 1: 'H': Hosts, 'N': Networks, 'U': Union (rules should normally use the union)
      character 2: '_': Reserved
      character 3: '_': Separator, 'N': New list (for loading while old copy active)
 */
CREATE OR REPLACE FUNCTION "net/reputation"."ReputationSet.identifier.validate" (identifier text)
RETURNS text AS $$
DECLARE
  _validate_ipset_result text := (SELECT net."IpSet.identifier.validate"(identifier));
BEGIN
  IF NOT LENGTH(identifier) BETWEEN 1 AND 31 THEN
    RETURN 'ReputationSet.identifier must have between 1 and 27 characters: ''' || identifier || '''';
  END IF;
  IF _validate_ipset_result IS NOT NULL THEN
    RETURN _validate_ipset_result;
  END IF;
  -- All is OK
  RETURN null;
END;
$$ LANGUAGE plpgsql
IMMUTABLE;
