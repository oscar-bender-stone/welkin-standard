# SPDX-FileCopyrightText: 2025 Oscar Bender-Stone <oscar-bender-stone@protonmail.com>
# SPDX-License-Identifier: MIT

require "asciidoctor"

Asciidoctor.convert_file "document/eng/index.mink", to_file: "html/eng/index.html", safe: :safe

puts "Completed generating HTML, located in html/eng."

