##
# Project Title
#
# @file
# @version 0.1


uv-compile:
	uv pip compile pyproject.toml -o reqruirements.txt
uv-sync:
	uv pip sync reqruirements.txt
build:
	python -m build
run-debugger:
	PYTHONBREAKPOINT="pudb.set_trace"
	python -m pudb ./src/main.py
run-breakpoint:
	PYTHONBREAKPOINT="pudb.set_trace"
	python src/main.py
ruff-fix:
	python -m ruff check src --fix
ruff-fix-unsafe:
	python -m ruff check src --fix --unsafe-fixes
test:
	python -m pytest --capture=no
test-debugger:
	python -m pytest --capture=no --pudb



# end
