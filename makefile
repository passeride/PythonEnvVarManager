##
# Project Title
#
# @file
# @version 0.1


pre-commit:
	pre-commit run --all-files
uv-compile:
	uv pip compile pyproject.toml --output-file requirements.txt --no-emit-index-url --generate-hashes  --no-annotate
	uv pip compile pyproject.toml --output-file dev-requirements.txt --extra dev --no-emit-index-url --generate-hashes  --no-annotate
uv-sync:
	uv pip sync dev-requirements.txt
build:
	python -m build
publish:
	python -m twine upload -r pypi dist/*
run-debugger:
	PYTHONBREAKPOINT="pudb.set_trace"
	python -m pudb ./src/main.py
run-breakpoint:
	PYTHONBREAKPOINT="pudb.set_trace"
	python src/main.py
format:
	python -m ruff format env_manager
ruff-fix:
	python -m ruff check env_manager --fix
ruff-fix-unsafe:
	python -m ruff check env_manager --fix --unsafe-fixes
test:
	python -m pytest --capture=no
test-debugger:
	python -m pytest --capture=no --pudb



# end
