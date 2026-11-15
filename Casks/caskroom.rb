cask "caskroom" do
  version "0.1.0"
  sha256 "6442228fa89a6cfaa00ab51b8ae0cd6d9a7a2be10ee4ce8bcb9521c695735883"

  url "https://github.com/vs-cristian/caskroom/releases/download/v#{version}/Caskroom-#{version}.zip"
  name "Caskroom"
  desc "GUI for Homebrew"
  homepage "https://github.com/vs-cristian/caskroom"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Caskroom.app"

  zap trash: [
    "~/Library/Application Support/io.github.vs-cristian.caskroom",
    "~/Library/Caches/io.github.vs-cristian.caskroom",
    "~/Library/HTTPStorages/io.github.vs-cristian.caskroom",
    "~/Library/Preferences/io.github.vs-cristian.caskroom.plist",
  ]
end
