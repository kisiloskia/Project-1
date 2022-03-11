#!/bin/bash
sed s/INCORRECT_PASSWORD/ACCESS_DENIED/ LogA.txt > acces_denied.txt
awk '{print $4, $6}' LogA.txt > filtered_logs.txt
root@UbuntuDesktop:/03-student/day3/first_shell_script# cat IP_lookup.sh 
#!/bin/bash
whois $1 | grep Country
