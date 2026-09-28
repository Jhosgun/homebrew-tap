cask "tokenbar" do
  version "1.0.2"
  sha256 "2e461ca45053b2f60f298c5f5275252684648de15491598d30a0446753094d0e"

  url "https://github.com/Jhosgun/tokenbar/releases/download/v#{version}/TokenBar-#{version}.zip"
  name "TokenBar"
  desc "Menu bar app that shows token usage and remaining quota of your AI coding tools"
  homepage "https://github.com/Jhosgun/tokenbar"

  depends_on macos: :sonoma

  app "TokenBar.app"

  zap trash: [
    "~/Library/Application Support/TokenBar",
  ]

  caveats <<~EOS
    TokenBar no está firmada con una cuenta de Apple Developer, así que macOS la bloquea
    la primera vez que la abres. Si ves ese aviso, quítale la marca de cuarentena:

      xattr -dr com.apple.quarantine "/Applications/TokenBar.app"

    (En Homebrew 7 ya no existe `--no-quarantine`.)

    Si prefieres no confiar en el binario, el código está en el repo y se compila con
    `make install`.
  EOS
end
