#!/usr/bin/perl
use Time::HiRes;
$srcfile = "janniks_mor";
$destfile = "/tmp";
open (DATAFILE, '>testdata');
open (AGGRFILE, '>testaggr');
for ($size = 5; $size <= 120; $size += 5) {
    print "Size: $size\n";
    print DATAFILE "Size: $size\n";
    $count = $size * 1024 * 1024 / 512;
    `dd if=/dev/urandom of=$srcfile count=$count`;
    $total = 0;
    for ($i = 0; $i < 8; $i++) {
        $before = Time::HiRes::time();
        `cp $srcfile $destfile`;
        $after = Time::HiRes::time();
        $delta = $after - $before;
        $total += $delta;
        print DATAFILE "$delta\n";
    }
    print DATAFILE "Average: $total\n\n";
    print AGGRFILE "$total\n";
}
close (DATAFILE);