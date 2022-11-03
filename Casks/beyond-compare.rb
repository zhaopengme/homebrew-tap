cask "beyond-compare" do
  version "0.0.1"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://zhaopengme-generic.pkg.coding.net/macapps/public/Beyond-Compare.dmg"
  name "beyond-compare"

  app "beyond-compare.app"
end
