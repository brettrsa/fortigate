#!/usr/bin/perl
#
# This is a simple perl script that gathers the login attempts to a 
# fortigate device from the elog.log file on the fortigate device
#
# Thanks to Allan Houston for you assistance :)
#
# Start

use strict;

        # Open up the file from the command line

        my $file = $ARGV[0];

        open (IN,$file) or die "Couldn't open $file for reading: $!\n";

        while (my $line = <IN>) {       # Loop through file

           # (\d+\.\d+\.\d+\.\d+) = Regex for IP Address

                if ($line=~/ user=(["]\w+["]).+ui=(\w+[(]\d+\.\d+\.\d+\.\d+[)]).+action=(\w+).+status=(\w+)/)  {

                      printf "Username: $1 \tMethod and IP : $2  \tAction: $3 $4\n";

                }

        }

# End

