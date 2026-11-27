# lua-sort-ascending

> **Status: unfinished.** An exercise from an IT course I took in 2024 and didn't finish. It stays public as a record, as it was left.

Originally named *organizando-uma-lista-em-ordem-crescente-usando-lua* ("sorting a list in ascending order using Lua").

## What it is

A single file, [`organizador em ordem crescente de lista.lua`](organizador%20em%20ordem%20crescente%20de%20lista.lua), with:

- `OrdemCrescente(lista)`: sorts a list in ascending order with `table.sort` and returns it.
- `imprimirLista(lista)`: prints each index and value.
- A small test at the bottom that sorts `{23192, 93, 293, 2, 1, 9, 3, 0, 2}` and prints the result.

## Known issues

- **The file does not run as committed.** The `for` loop in `imprimirLista` is missing its `do` (line 12), so Lua stops with `'do' expected near 'print'`. With `do` added, it works.
- **It sorts the original list in place.** `local t = lista` does not copy the table, so the list you pass in is changed too (the returned table is the same one).
- **Loading it runs the test**, because the test code sits at the top level of the file.
- `OrdemCrescente` is a global function.

## Using it

The file name contains spaces, and `require` treats `.` as a directory separator, so the module name must be given **without** `.lua` and the search pattern must end in `?.lua`:

```lua
package.path = package.path .. ";/path/to/this/repo/?.lua"
require "organizador em ordem crescente de lista"

local numeros = OrdemCrescente({3, 1, 2})   --> {1, 2, 3}
```

This only works after the missing `do` is fixed.

## License

MIT, Copyright (c) 2024 xpudding. See [`LICENSE`](LICENSE).
