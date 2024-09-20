cask "lexorium" do
  version "1.1.0"
  sha256 "910fa1c7abd355163d40c1ceaa647a023745fae5cb56af9156d478db363bd5a5"

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
