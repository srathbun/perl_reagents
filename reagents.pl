

# grab date in filename, then convert to epoch time
# /ee means eval replacement
# note the curly brackets around the var name, since it is not interpolated by the regex match
perl -e '$_="/home/USER/PATH/SERVER/__Tue Nov 27 01:38:51 EST 2012__logs.txt"; s/(.*)(__)(.*)(__)(.*)/$var=parsedate($3); $_="$1__${var}__$5"; print "__$5\n"/ee;'

find /home/username/uploads/ -type f -name '*__*__*' -exec rename 's/(.*)(__)(.*)(__)(.*)/use Time::ParseDate; my($var)=parsedate($3); $_="$1__${var}__$5";/e' "{}" \;

# run script.pl like this:
perl -ni'.bak' -e "script.pl" somefiles
