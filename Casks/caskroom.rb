cask "caskroom" do
  version "0.2.2"
  sha256 "a1d81b7358b1b86861ff514da1c7a23828870bc982bfe0529ba902a6d9ed3952"

  url "https://github.com/vs-cristian/caskroom/releases/download/v#{version}/Caskroom-#{version}.zip"
  name "Caskroom"
  desc "GUI for Homebrew"
  homepage "https://github.com/vs-cristian/caskroom"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Caskroom.app"

  zap trash: [
    "~/Library/Application Support/io.github.vs-cristian.caskroom",
    "~/Library/Caches/io.github.vs-cristian.caskroom",
    "~/Library/HTTPStorages/io.github.vs-cristian.caskroom",
    "~/Library/Preferences/io.github.vs-cristian.caskroom.plist",
  ]
end
