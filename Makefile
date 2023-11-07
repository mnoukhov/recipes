recipe ?=evo-standard

LATEST_RECIPE_FILENAME := $(shell ls ${recipe} | sort -n | tail -1 )

CURRENT_RECIPE_FILENAME := $(shell date +"%Y-%m-%d").md

.PHONY: update
update:
	cp ${recipe}/${LATEST_RECIPE_FILENAME} ${recipe}/${CURRENT_RECIPE_FILENAME}
	nvim ${recipe}/${CURRENT_RECIPE_FILENAME}

.PHONY: new
new:
	cp ${recipe}/template.md ${recipe}/${CURRENT_RECIPE_FILENAME}
	nvim ${recipe}/${CURRENT_RECIPE_FILENAME}
