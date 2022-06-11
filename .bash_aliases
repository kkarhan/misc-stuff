#	Bash Aliases

##	Random Password Generator Functions
###	64 digits
alias pw64='</dev/urandom tr -dc '0123456789AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz@!?~+#-_' | head -c64; echo;'
###	63 digits
alias pw63='< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-63};echo;'
###	32 digits
alias pw32='</dev/urandom tr -dc '0123456789AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz@!?~+#-_' | head -c32; echo;'
###	31 digits
alias pw31='< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-31};echo;'
###	16 digits
alias pw16='</dev/urandom tr -dc '0123456789AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz@!?~+#-_' | head -c16; echo;'
###	15 digits
alias pw15='< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-15};echo;'
##	Random 8 digit One Time Password
alias rotp='< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-8};echo;'
##	Random 8 digit TAN
alias rtan='< /dev/urandom tr -dc 0-9 | head -c${1:-8};echo;'
##	Random 4 digit PIN
alias rpin='< /dev/urandom tr -dc 0-9 | head -c${1:-4};echo;'
###	see:	https://www.howtogeek.com/howto/30184/10-ways-to-generate-a-random-password-from-the-command-line/

##	Useful commands
alias flushcache='sudo sh -c "sync; echo 3 > /proc/sys/vm/drop_caches"'
###	Flush the RAM forcefully
###		See:	https://www.cyberithub.com/drop-flush-clear-cache-memory-ram-in-linux/

alias update='sudo apt-get update'
alias upgrade='sudo apt-get dist-upgrade && sudo apt-get autoremove && sudo apt-get autoclean && sudo snap refresh'
###	Update the System and Packages on Ubuntu - based distros

alias cls='clear'
alias dir='ls lh'
###	faster to type

function isup() { ping -a -b -c 1 -D "$@"; }
###	Single Ping attempt to a specific host which has to be specified i.e. "isup duckduckgo.com"

