all: lint render

render: assignment.Rmd 
	Rscript -e 'rmarkdown::render("$<")'

lint: assignment.Rmd
	Rscript -e 'lintr::lint("$<")'
