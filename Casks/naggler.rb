cask "naggler" do
  version "1.7.0"
  sha256 "0a3d489e46adaa5ba254b2af0f2db12c81266e8475258de31870c4ae35f00c12"

  url "https://github.com/MurchE/naggler/releases/download/v#{version}/Naggler-v#{version}-macOS.dmg"
  name "Naggler"
  desc "Attention ledger — track where your focus actually goes"
  homepage "https://github.com/MurchE/naggler"

  app "Naggler.app"

  zap trash: [
    "~/.naggler",
  ]
end
