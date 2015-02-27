#!/bin/bash

#####Begin Header########################################################################################################
#
#	Title: SyncFiles.sh
#	Author: Kevin Olson
#	Date: 02/26/15
#	Ver: 1.0
#
######End Header#########################################################################################################

#Declare variables
RSYNC=/usr/bin/rsync 
SPATH=/home/kevin/comics
DPATH=/home/kevin/box/Comics

if [ "$1" = "dryrun" ]
then
	$RSYNC --dry-run -aruv $SPATH $DPATH
else
	$RSYNC -aruv $SPATH $DPATH
fi
