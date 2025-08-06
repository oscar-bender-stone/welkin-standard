# SPDX-FileCopyrightText: 2025 Oscar Bender-Stone <oscar-bender-stone@protonmail.com>
# SPDX-License-Identifier: MIT

html:
	npm --prefix "tools/markup" run build
	@echo "Succesfully generated HTML."

reuse:
    uv run reuse lint
