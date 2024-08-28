cask "lexorium" do
  version "1.1.0"
  sha256 "bb006f347284cde2fc0aff13db1cef8473c38dc128019d1b98c00559d3a6063b"

  url "https://github.com/antnsn/Lexorium/releases/download/v#{version}/Lexorium-darwin-arm64-#{version}.zip"
  name "Lexorium"
  desc "Manage notes with markdown support"
  homepage "https://github.com/antnsn/Lexorium"

  app "Lexorium.app"

  zap trash: [
    "~/Library/Application Support/Lexorium",
    "~/Library/Preferences/com.lexorium.plist",
  ]

  caveats <<~EOS
    Note: Due to macOS security settings, you may need to right-click the app and choose 'Open' to allow it to run the first time.
  EOS
end
