export accessUsername=rhn-support-ldenny
export accessPassword=P66631425
SBR=Stack
AccountNum=490977
hours="10"
timeLimit="AND Hours_Since_Case_Last_Updated__c < $hours"

token=`curl -s -k -d "username=$accessUsername&password=$accessPassword&grant_type=password&client_id=hydra-client-cli" https://sso.redhat.com/auth/realms/redhat-external/protocol/openid-connect/token | sed 's/.*access_token":"\([^"]*\).*/\1/'`

query="SELECT CaseNumber, CreatedDate, Hours_Since_Case_Last_Updated__c FROM Case WHERE SBR_Group__c INCLUDES  ('$SBR') AND Account.AccountNumber = '$AccountNum' $timeLimit \",\"identifier\":\"NumberOfRecord"

casesForAccountNumber=`curl -s $curlOption 'https://access.redhat.com/hydra/rest/soql' \
-H 'Content-Type: application/json' \
-H "Authorization:Bearer $token" \
-H 'Origin: https://access.redhat.com' \
--data-raw $"[{\"query\":\"$query\"}]"`

echo $casesForAccountNumber
