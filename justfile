# SPDX-FileCopyrightText: 2025 Oscar Bender-Stone <oscar-bender-stone@protonmail.com>
# SPDX-License-Identifier: MIT

build:
    ruby tools/markup/main.rb

lint:
    uv run reuse lint
