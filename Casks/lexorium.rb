cask "lexorium" do
  version "1.1.2"
  sha256 "0f67cac0d2c4b762bf6d660a6e2d2875a373f6b56cce5cc0736be64d36689966"

  url "https://github.com/antnsn/Lexorium/releases/download/v#{version}/Lexorium-darwin-x64-#{version}.zip"
  name "Lexorium"
  desc "Manage notes with markdown support"
  homepage "https://github.com/antnsn/Lexorium"

  app "Lexorium.app"

  zap trash: [
    "~/Library/Application Support/Lexorium",
    "~/Library/Preferences/com.lexorium.plist",
  ]

  caveats <<~EOS
    This app requires Rosetta 2 to run on Apple Silicon (M1/M2) Macs.
    If Rosetta 2 is not already installed, you can install it by running:
    
      softwareupdate --install-rosetta

    After Rosetta 2 is installed, you can run the app normally.
    
    Note: Due to macOS security settings, you may need to right-click the app and choose 'Open' to allow it to run the first time.
  EOS
end