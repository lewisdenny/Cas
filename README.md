# Cas

Case Attachment Searcher
~~~
cas
Usage:
  cas [CREDENTIALS] [OPTIONS]

Example:
  cas --username $user --password $pass --sbr Stack --customer-account-id 1445807 --limit 10months --ignore-case --filter "SearchString" 

[CREDENTIALS]
  -u,  --username               access.redhat.com username
  -p,  --password               access.redhat.com password

[OPTIONS]
  -s,  --sbr                    SBR you would like to search in
  -id, --customer-account-id    Customers account ID
  -f,  --filter                 Filter on attachment details
  -h,  --help                   This help screen
  -l,  --limit                  Limit case results to cases opened x hours ago
                                h|hours, d|days, w|weeks, m|months, or y|years can be used
  -L,  --link                   Enables links to the attachments
  -i,  --ignore-case            Ignore case distinctions
  -v,  --verbose                Enables verbose on all curl commands
~~~
