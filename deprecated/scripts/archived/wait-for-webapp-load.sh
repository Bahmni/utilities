#!/bin/bash
date
until [ "`curl --silent --show-error --connect-timeout 3 -I $1 | grep 'Coyote'`" != "" ];
do
	date
  echo --- sleeping for 1 seconds
  sleep 1
done

echo $1/$2 is ready!