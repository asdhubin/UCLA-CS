open(OUT,">4bitalu.ldo");
print OUT "## Auto generated by Project Navigator for Modelsim\n";
my $_OtherVSIMOptions=" ";
my $_OtherVCOMOptions=" ";
my $_VHDLSyntax="-93";
my $_UseExplicit="-explicit";
my $_SimResolution="1ps";
print OUT "vlib work\n";
print OUT "\n";
my $vhModelNames=' '.'mux8x4bus.vhd mux2to1_4bits.vhd 4bitalu.vhf';
my @vhModelNames=split(/ /,$vhModelNames);
foreach $module (@vhModelNames) {
if($module =~ /\.vh[fd]/i) {
print OUT "vcom -just e $_VHDLSyntax $_UseExplicit $_OtherVCOMOptions $module\n";
print OUT "vcom -skip e $_VHDLSyntax $_UseExplicit $_OtherVCOMOptions $module\n";}}
print OUT "## You need to generate your own stimuli\n";
print OUT "vsim -t $_SimResolution -L xilinxcorelib \"\" $_OtherVSIMOptions";
print OUT " 4bitalu"; 
print OUT "\n";
print OUT "view wave\n";
print OUT "add wave *\n";
print OUT "view structure\n";
print OUT "view signals\n";
close OUT;