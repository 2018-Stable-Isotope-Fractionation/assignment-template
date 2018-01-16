all: lint render

# render Rmd file
render: assignment.Rmd 
	Rscript -e 'rmarkdown::render("$<")'

# lint Rmd file
lint: assignment.Rmd
	Rscript -e 'lintr::lint("$<")'
	$(eval BYTES="`Rscript -e 'lintr::lint("$<")' | grep ^ | wc -c`")
	@if [ $(BYTES) -gt 0 ]; \
	then false; fi