cask "360chrome" do
  version "12.2.1662.0"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://zhaopengme-generic.pkg.coding.net/macapps/public/360Chrome.dmg"
  name "360chrome"
  homepage "https://browser.360.cn/ee/mac/index.html"

  app "360chrome.app"
end
