# this target runs checks on all files

quality:
	isort carte src scripts configs -c
	flake8 carte src scripts configs
	mypy carte src scripts configs
	black --check carte src scripts configs

# this target runs checks on all files and potentially modifies some of them

style:
	isort carte src scripts configs
	black carte src scripts configs