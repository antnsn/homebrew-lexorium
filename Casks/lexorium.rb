cask "lexorium" do
  version "3.0.4"
  sha256 "2f9a73ed7060ce8cafc1ec1df3741bd16e48978d7a868965ba0be95188ef68d4"
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
