#!/usr/bin/perl
#
# This is a simple perl script that formats the data from a fortigate
# tlog.log file into an easy to read format
#
# Thanks go out to Allan Houston for your help with this :)
#
# Start

use strict;

        # Open up the file from the command line

        my $file = $ARGV[0];

        open (IN,$file) or die "Couldn't open $file for reading: $!\n";

        while (my $line = <IN>) {       # Loop through file

                # (\d+\.\d+\.\d+\.\d+) = Regex for IP Address

                if ($line=~/ src=(\d+\.\d+\.\d+\.\d+).+dst=(\d+\.\d+\.\d+\.\d+).+dst_port=(\d+)/) {

                        printf "Source: $1 \tDest: $2 \tPort: $3\n";

                }

        }

# End
