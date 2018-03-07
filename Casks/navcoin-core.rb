cask 'navcoin-core' do
  version '4.1.1'
  sha256 '15b095e64b332e4fc746b685b6e50005bed0575cec0c47751617b038508eb0e4'

  # github.com/NAVCoin/navcoin-core was verified as official when first introduced to the cask
  url "https://github.com/NAVCoin/navcoin-core/releases/download/#{version}/navcoin-#{version}-osx.dmg"
  appcast 'https://github.com/NAVCoin/navcoin-core/releases.atom',
          checkpoint: '1be3581d68e0f8bf2b2c93e8a0dad3e45cf1f16f9539e818ccea44711a882d5d'
  name 'NavCoin Core'
  homepage 'https://navcoin.org/downloads'

  app 'NavCoin-Qt.app'

  zap trash: [
               '~/Library/Application Support/NavCoin4/',
               '~/Library/Preferences/org.navcoin.NavCoin-Qt.plist',
               '~/Library/Saved Application State/org.navcoinfoundation.NavCoin-Qt.savedState'
             ]
end
