bacon: testing.Rmd 
	Rscript -e 'rmarkdown::render("$<")'

clean:
	rm -rf testing.html