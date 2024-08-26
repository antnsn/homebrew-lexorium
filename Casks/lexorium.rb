cask "lexorium" do
  version "1.0.2"
  sha256 "38ed55b8156a40ad906a5ed3043ad322770106c92e80d5db9f3b1c0a69f78b67"

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
    Note: Due to macOS security settings, you may need to right-click the app and choose 'Open' to allow it to run the first time.
  EOS
end
