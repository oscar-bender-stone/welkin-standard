# SPDX-FileCopyrightText: 2025 Oscar Bender-Stone <oscar-bender-stone@protonmail.com>
# SPDX-License-Identifier: MIT

require "asciidoctor"

document = Asciidoctor.load_file("document/eng/index.mink")
html_output = document.convert

license = <<~LICENSE
  <!-- SPDX-FileCopyrightText: 2025 Oscar Bender-Stone@protonmail.com -->
  <!-- SPDX-License-Identifier: CC-BY-SA-4.0 -->
LICENSE

File.write("html/eng/index.html", license + "\n" + html_output)
  
puts "Completed generating HTML, located in html/eng"
