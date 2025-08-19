// SPDX-FileCopyrightText: 2025 Oscar Bender-Stone <oscar-bender-stone@protonmail.com>
// SPDX-License-Identifier: MIT

import Asciidoctor from "@asciidoctor/core";
import * as ejs from "ejs";
import * as fs from "node:fs/promises";
import * as path from "path";
import * as prettier from "prettier";
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename)
const asciidoctor = Asciidoctor();

const language = "eng";

const input_directory = path.join(__dirname, "../../", "document", language);
const output_directory = path.join(__dirname, "../../", "html", language);

const base_paths = ["index.mink", "syntax.mink"]

var html_body = "";
var document;

for (const base_path of base_paths) {
  document = asciidoctor.loadFile(path.join(input_directory, base_path));
  html_body += document.convert()
}

const template = await fs.readFile(path.join(__dirname, "template.html5.ejs"), {encoding: "utf8"})
var html = ejs.render(template, {html_body: html_body});

html = await prettier.format(html, { semi: false, parser: "html"})

fs.writeFile(path.join(output_directory, "index.html"), html)
