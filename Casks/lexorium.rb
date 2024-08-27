cask "lexorium" do
  version "1.0.8"
  sha256 "16f4ae0a0acc30c4e09ee9168e5c7f1b40cc7cfb4929ebd0400a8d3836567fb7"

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
