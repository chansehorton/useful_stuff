#!/bin/bash -e

filename=$1
filepath=/usr/local/bin
editor=vim

createScript() {
  if [ ! -f $1 ]; then
	touch $1 
	chmod +x $1
	echo "#!/bin/bash -e" >> $1 
	echo "" >> $1
  fi
}

createScript $filepath/$filename
$editor $filepath/$filename
 


