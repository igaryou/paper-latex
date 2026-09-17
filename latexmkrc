# upLaTeX + dvipdfmx
$latex  = 'uplatex -synctex=1 -halt-on-error -interaction=nonstopmode %O %S';
$dvipdf = 'dvipdfmx %O -o %D %S';

# PDF 出力 (DVI → dvipdfmx)
$pdf_mode = 3;

# 文献処理
$bibtex = 'pbibtex %O %B';
$biber  = 'biber %O %B';