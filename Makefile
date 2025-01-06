# Installation
install:
	uv run pip install -e .[dev]

# Testing
test:
	uv run pytest --log-cli-level=INFO tests

# Linting/Formatting
lint:
	uv run ruff check --preview src
	uv run ruff check --preview tests
	uv run mypy src
	uv run mypy tests

format:
	uv run ruff format src
	uv run ruff format tests
	# Reformat imports
	uv run ruff check src --select I --fix
	uv run ruff check tests --select I --fix
