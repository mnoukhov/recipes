RECIPE ?= "evo-standard" 

LATEST_RECIPE_FILENAME := $(shell ls $RECIPE | sort -n | tail -1 )

CURRENT_RECIPE_FILENAME := $(shell date +"%Y-%m-%d").md

.PHONY: update
update:
	cp ${RECIPE}/${LATEST_RECIPE_FILENAME} ${RECIPE}/${CURRENT_RECIPE_FILENAME}
	nvim ${RECIPE}/${CURRENT_RECIPE_FILENAME}

.PHONY: new
new:
	cp ${RECIPE}/template.md ${RECIPE}/${CURRENT_RECIPE_FILENAME}
	nvim ${RECIPE}/${CURRENT_RECIPE_FILENAME}
