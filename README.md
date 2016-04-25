# AICS Annual Report FY2015


## Team/Unit Instructions

If you have any questions or need any help on the following instructions, please contact Naoya Maruyama.

### Prerequisites

The following commands are used to typeset the report.

- pdflatex
- biber
- latexmk

Tested on Mac with MacTex 2015.

### Typesetting

On Mac/Linux, run the ``typeset.sh`` shell script. 

### Per-group files
Each group has its own sub directory. Edit and create files only under your directory and avoid editing files not in your directory. 

### Template 
Use main.tex in your directory as a starting template for your group's report. Do not change the existing top-level section titles or add/remove top-level sections. Subsections may be used.

### Cross referencing
To avoid naming conflicts when using cross referecing, use the ``localref`` and ``locallabel`` commands rather than the standard ``ref`` and ``label`` commands. They will automatically prefix the given label with the chapter number. See the main.tex template file.

### Publications

The publication list is created from the main.bib file in your directory. Each entry requires a ``keywords`` field to indicate the section where it should be displayed. For example, a journal article must have ``journal`` as the value of its ``keywords`` field. See main.bib for more details.
