
LATEST_RECIPE_FILENAME := $(shell ls | sort -n | tail -1 )

CURRENT_RECIPE_FILENAME := $(shell date +"%Y-%m-%d").md

.PHONY: new
new:
	cp ${LATEST_RECIPE_FILENAME} ${CURRENT_RECIPE_FILENAME}
	nvim ${CURRENT_RECIPE_FILENAME}
