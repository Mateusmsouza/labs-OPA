unit-testing:
	opa test bundle/mapalabs -v

build:
	opa build bundle/mapalabs
	mv *.tar.gz builds