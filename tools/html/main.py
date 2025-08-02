# SPDX-FileCopyrightText: 2025 Oscar Bender-Stone <oscar-bender-stone@protonmail.com>
# SPDX-License-Identifier: MIT


def install_mm0():
    import subprocess

    pass

    # e70adb8db639604f73daf08de5e8ee6a70ab549c


def main():
    import pypandoc

    language_code = "eng"

    pypandoc.convert_file(
        f"document/{language_code}/*.wiki",
        "html",
        outputfile="html/eng/index.html",
        format="mediawiki",
        extra_args=[
            "--template",
            "tools/template.html",
            "-V",
            f"lang={language_code}",
            "--metadata",
            "title='The Welkin Standard'",
            # "--metadata",
            # "pagetitle='The Welkin Standard'",
        ],
    )


if __name__ == "__main__":
    main()
