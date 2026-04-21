cask "lexorium" do
  version "4.0.0"
  sha256 "3b4adb7c8ff1dc7383bd8a81d6f6b326eebd26775d465f247a337508359b78e7"
  url "https://github.com/antnsn/Lexorium/releases/download/v#{version}/Lexorium_#{version}_aarch64.dmg"
  name "Lexorium"
  desc "A markdown note and snippet manager — a place for words"
  homepage "https://github.com/antnsn/Lexorium"

  app "Lexorium.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Lexorium.app"],
                   sudo: true
  end

  zap trash: [
    "~/Library/Application Support/com.antnsn.lexorium",
    "~/Library/Preferences/com.antnsn.lexorium.plist",
  ]
end
