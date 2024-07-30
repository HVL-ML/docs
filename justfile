build:
    MDBOOK_OUTPUT='{"xgettext": {"depth": "1"}}'
    mdbook build -d po

# Define a recipe named 'build'
#build:
#    MDBOOK_OUTPUT='{"xgettext": {"depth": "1"}}'
#    mdbook build -d po
#    mkdir -p book
#    mv po/html book/html

update lang:
    msgmerge --update po/{lang}}.po po/messages.pot

newlang lang:
  cp po/messages.pot po/{{lang}}.po

buildlang lang:
    MDBOOK_BOOK__LANGUAGE={{lang}} 
    mdbook build -d book/{{lang}}
    mv book/{{lang}}/html book/html/{{lang}}

servelang lang:
    MDBOOK_BOOK__LANGUAGE={{lang}} mdbook serve -d book/{{lang}} -o

serve:
    mdbook serve -o