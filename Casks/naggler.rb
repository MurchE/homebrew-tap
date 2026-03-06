cask "naggler" do
  version "1.7.0"
  sha256 "9e2eb1b11519812d248d2a9cb578633103440646c29f20bdc8923c69db87f322"

  url "https://github.com/MurchE/naggler/releases/download/v#{version}/Naggler-v#{version}-macOS.dmg"
  name "Naggler"
  desc "Attention ledger — track where your focus actually goes"
  homepage "https://github.com/MurchE/naggler"

  app "Naggler.app"

  zap trash: [
    "~/.naggler",
  ]
end
