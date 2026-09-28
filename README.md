# homebrew-tap

Tap de Homebrew de [@Jhosgun](https://github.com/Jhosgun).

## TokenBar

Barra de menú para macOS con el consumo y la cuota de tus herramientas de IA.
Código y documentación: [Jhosgun/tokenbar](https://github.com/Jhosgun/tokenbar).

```sh
brew trust jhosgun/tap
brew install --cask jhosgun/tap/tokenbar
```

La app no está notarizada por Apple, así que macOS la bloquea la primera vez. Si te pasa:

```sh
xattr -dr com.apple.quarantine "/Applications/TokenBar.app"
```

En Homebrew 7 ya no existe `--no-quarantine`, así que esa es la vía.
