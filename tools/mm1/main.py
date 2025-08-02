# SPDX-FileCopyrightText: 2025 Oscar Bender-Stone <oscar-bender-stone@protonmail.com>
# SPDX-License-Identifier: MIT


def install_mm0():
    import subprocess

    try:
        install = subprocess.run(
            [
                "cargo",
                "install",
                "--root",
                ".",
                "--locked",
                "--git",
                "https://github.com/digama0/mm0",
            ]
        )
    except subprocess.CalledProcessError as error:
        print(f"Installing mm0 failed: {error}")


def main():
    install_mm0()


if __name__ == "__main__":
    main()
