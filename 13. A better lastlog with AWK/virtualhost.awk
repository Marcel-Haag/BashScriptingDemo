# Usage: 
# awk -f virtualhost.awk search=packt virtualhost.conf
BEGIN { RS="\n\n" ; }
$0 ~ search { print }

