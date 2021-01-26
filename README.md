# context-action

[![CI](https://github.com/lrusso96/context-action/workflows/CI/badge.svg)](https://github.com/lrusso96/context-action/actions?query=workflow%3ACI)
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

A simple GitHub Action for [ConTeXt](https://wiki.contextgarden.net).

## Inputs

* `main-tex`

    The main TeX file to be compiled. This input is required.

    ```yaml
    - uses: lrusso96/context-action@main
      with:
        main-tex: 'my_main.tex'
    ```

* `working_directory`

    The working directory for ConTeXt.

* `args`

    The extra arguments to be passed to the context command.

    ```yaml
    - uses: lrusso96/context-action@main
      with:
        main-tex: 'my_main.tex'
        args: '--batchmode'
    ```

## Example

```yaml
name: Compile ConTeXt project
on: [push]
jobs:
  build_context:
    runs-on: ubuntu-latest
    steps:
      - name: Set up Git repository
        uses: actions/checkout@v2
      - name: Compile ConTeXt document
        uses: lrusso96/context-action@main
        with:
          main-tex: my_fancy_main.tex
```
