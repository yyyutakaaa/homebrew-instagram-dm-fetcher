cask "instagram-dm-fetcher" do
  version "1.0.1"
  sha256 "87b74b3d364677c1dfe551208ad730d6366e32ebcd7997f4b110946e35cd6acc"

  url "https://github.com/yyyutakaaa/InstaDM-Saver/releases/download/v#{version}/Instagram-DM-Fetcher-v#{version}.dmg"
  name "Instagram DM Fetcher"
  desc "Download and backup Instagram direct messages"
  homepage "https://github.com/yyyutakaaa/InstaDM-Saver"

  app "Instagram DM Fetcher.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Instagram DM Fetcher.app"],
                   sudo: false
  end
end
