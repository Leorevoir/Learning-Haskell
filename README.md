# Learning-Haskell

> Welcome to my Learning-Haskell repository! 😆
> This repository showcases my very first steps in Haskell.

## Modules

1. [operations.hs](https://github.com/Leorevoir/Learning-Haskell/blob/main/Ex1/operations.hs): This module contains exercices related to simples `mathematical operations`.

2. [string.hs](https://github.com/Leorevoir/Learning-Haskell/blob/main/Ex1/string.hs): This module contains exercises related to `string manipulation`.

3. [weekday.hs](https://github.com/Leorevoir/Learning-Haskell/blob/main/Ex2/weekday.hs): This module contains exercises related to `enum manipulation`.

4. [instances.hs](https://github.com/Leorevoir/Learning-Haskell/blob/main/Ex2/instances.hs): This module contains exercises related to the `instances`, `Semigroup` and `Monoid` data type, and to the `mempty` and `mappend` functions.

## Usage

To compile theses exercices, I will recommand the use of [GHCI](https://downloads.haskell.org/ghc/latest/docs/users_guide/ghci.html)

```bash
sudo apt update
sudo apt upgrade
```

```bash
sudo apt install ghc
```

Then run the GHCI terminal

```bash
ghci
```

And load the module you want to use

```bash
ghci> :cd Ex1
ghci> :load operations.hs 
[1 of 1] Compiling Operations       ( operations.hs, interpreted )
Ok, one module loaded.
ghci> listProduct [123456789, 987654321, 42, 84]
5903208870057541864
ghci> 
```
