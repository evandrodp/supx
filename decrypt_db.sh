#!/bin/sh
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#

if [ "$#" -ne "2" ]; then
	echo "fail: not enough args. Usage:"
	echo "$0 [db.sqlite.crypt] [db.sqlite]"

	exit 1
fi

in="$1"
out="$2"
key="346a23652a46392b4d73257c67317e352e3372482177652c"

openssl enc -d -aes-192-ecb -in $in -out $out -K $key
rm $in

