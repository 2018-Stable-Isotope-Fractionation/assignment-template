bacon: testing.Rmd
  Rscript -e 'rmarkdown::render("$<")'
  
clean:
  rm -rf *.html *.md *.docx figure/ cache/