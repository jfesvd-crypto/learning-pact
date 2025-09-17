$pdflatex = 'pdflatex -interaction=nonstopmode -file-line-error -synctex=1 %O %S';
$bibtex   = 'biber %O %B';
$clean_ext .= ' acr alg glg glo gls ist xdy';
add_cus_dep('glo','gls',0,'do_makeglossaries');
add_cus_dep('acn','acr',0,'do_makeglossaries');
sub do_makeglossaries {
  my ($base) = @_;
  my $cmd = "makeglossaries $base";
  system($cmd);
}
