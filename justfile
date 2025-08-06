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

mm0_path := "tools/mm0"
mm0_url := "https://github.com/digama0/mm0"

_build_mm0:
	-git clone --depth=1 {{mm0_url}} {{mm0_path}}
	cargo build --manifest-path "tools/mm0/mm0-rs/Cargo.toml" --release --target-dir "tools/bin"
	cc "tools/mm0/mm0-c/main.c" -g --output "tools/bin/mm0-c"
	@echo "Succesfully compiled mm0-c"

# TODO: list all theorems
# TODO: make the command below
# work with Windows

# Verify proof files with mm0-c
mm0: _build_mm0
	./tools/bin/mm0-rs proofs/main.mm1 proofs/main.mmb
	./tools/bin/mm0-c proofs/main.mmb < proofs/main.mm0
	# @echo "Succesfullly proven all theorems!"
	
