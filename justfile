# SPDX-FileCopyrightText: 2025 Oscar Bender-Stone <oscar-bender-stone@protonmail.com>
# SPDX-License-Identifier: MIT

# Alias for help
default: help

# Generate HTML files
html:
	npm --prefix "tools/markup" run build
	@echo "Succesfully generated HTML."

# Verify REUSE compliance
reuse:
    uv run reuse lint

# List commands
help:
	@just --list
