# Description
This is an LaTeX template based on the submission guidelines for MISQ.
As MISQ formally only accepts Word documents, usage it is at your own
risks. However, it is whispered that there are actually ways to submit
PDF files for review purposes when you contact the editors.

It is based on the ICIS template of Ryan Schuetzler, which can be found
at https://github.com/rschuetzler/latex-icis-template
As I still use natbib myself, it uses his older misq.bst style file.
Porting over his more recent biber approach should not be too difficult,
in case you prefer biber.

As my research activities are typically in other fields than information systems,
I don't intend to maintain this repository very activitely. Volunteers who would
like to take over or fork this repository are very welcome, although I will do
my best to answer any inquiries related to this repository as good as possible.

## Notes

The style consists of two files, 'misqdoc.cls' for the LaTeX document class and
'misq.bst' for a BibTeX bibliography style. A very short example paper is available
as 'example.tex' which is a minimal working example, as well as a minimal bibliography
'example.bib' containing two paper in BibTeX format.

## Requirements
* Document MUST be compiled with XeLaTeX in order to support the required Times New Roman font.

## Use

Have a look at 'example.tex' and go from there. The features of Ryan Scheutzler's
ICIS template will probably all work, all I did not check this thoroughly. Have a
look at his repository if you are interested.