#!/usr/bin/perl -w

# rotate EPS-File clockwise about 90 degrees
# (c) 2004 Axel Junge a.junge@tu-bs.de <AJ>
#
# 2004-12-16: initial version v0.1 <AJ>

$infilename = $ARGV[0];
$outfilename = $ARGV[1];

if ( $#ARGV == 1) {
  open ( INFILE,  "$infilename")   or die "Can't open $infilename !"; 
  open ( OUTFILE, ">$outfilename") or die "Can't open $outfilename !";
} else {
  print "rotateps.pl: Perl script to rotate EPS files clockwise about 90 degrees\n";
  print "v0.1 by A. Junge\n";
  print "Syntax: rotateps.pl <infile.eps> <outfile.eps>\n";
  exit;
}

while ($line = <INFILE>) {
  # search BBox
  if ( $line =~ /^%%BoundingBox: (\d+) (\d+) (\d+) (\d+)/ ) {
    # save xmin and xmax to set center of rotation later 
    $xmin = $1;
    $xmax = $3;
    # swap x and y values
    print OUTFILE "%%BoundingBox: $2 $1 $4 $3\n"; 
  } else {
    print OUTFILE $line;
  }
  # search start of PostScript code
  if ( $line =~ /^%%BeginDocument/ ) {
    # set correct center of rotation and rotate 90 degrees clockwise 
    print OUTFILE "0 ", $xmin+$xmax ," translate\n";
    print OUTFILE "270 rotate\n";
  }
}

close INFILE;
close OUTFILE;
