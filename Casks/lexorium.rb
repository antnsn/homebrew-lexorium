cask "lexorium" do
  version "4.0.0"
  sha256 "6b2e850f2ff545cb039da5fc67aff58760626da13391e3611b95e5f134183136"
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
