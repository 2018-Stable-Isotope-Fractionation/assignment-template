all: lint render

# render Rmd file
render: assignment.Rmd 
	Rscript -e 'rmarkdown::render("$<")'

# lint Rmd file
lint: assignment.Rmd
	Rscript -e 'lintr::lint("$<")'
	# FIXME: lintr bot still runs twice and thus posts twice in github - figure out how to run only once
	$(eval BYTES="`Rscript -e 'lintr::lint("$<")' | grep ^ | wc -c`")
	@if [ $(BYTES) -gt 0 ]; \
	then false; fi