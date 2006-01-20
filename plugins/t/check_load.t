#! /usr/bin/perl -w -I ..
#
# Load Average Tests via check_load
#
# $Id: check_load.t,v 1.4 2005/07/25 01:47:14 illumino Exp $
#

use strict;
use Test;
use NPTest;

use vars qw($tests);
BEGIN {$tests = 4; plan tests => $tests}

my $successOutput = '/^OK - load average: [0-9]\.?[0-9]+, [0-9]\.?[0-9]+, [0-9]\.?[0-9]+/';
my $failureOutput = '/^CRITICAL - load average: [0-9]\.?[0-9]+, [0-9]\.?[0-9]+, [0-9]\.?[0-9]+/';

my $t;

$t += checkCmd( "./check_load -w 100,100,100 -c 100,100,100", 0, $successOutput );
$t += checkCmd( "./check_load -w 0,0,0       -c 0,0,0",       2, $failureOutput );

exit(0) if defined($Test::Harness::VERSION);
exit($tests - $t);

