unit-testing:
	opa test bundle/mapalabs -v

build-bundle:
	opa build bundle/mapalabs
	mv *.tar.gz builds