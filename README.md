# Cas

Case Attachment Searcher
~~~
❯ ./cas -h
Usage:
  cas [CREDENTIALS] [OPTIONS]

Example:
  cas -u rhn-support-username -p password -s Stack -id 1445807 -l -i -f Cwdlosp01

[CREDENTIALS]
  -u,  --username               access.redhat.com username
  -p,  --password               access.redhat.com password

[OPTIONS]
  -s,  --sbr                    SBR you would like to search in
  -id, --customer-account-id    Customers account ID
  -f,  --filter                 Filter on attachment details
  -h,  --help                   This help screen
  -l,  --link                   Enables links to the attachments
  -i,  --ignore-case            Ignore case distinctions
  -v,  --verbose                Enables verbose on all curl commands
~~~
