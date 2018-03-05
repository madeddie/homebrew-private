cask 'ledger-wallet-ripple' do
  version '1.0.3'
  sha256 '9f86d9a513456b0c71ab8dcdb37f4889bbaf33656acf339cf41a10a71e7bea4a'

  # github.com/LedgerHQ/ledger-wallet-ripple was verified as official when first introduced to the cask
  url "https://github.com/LedgerHQ/ledger-wallet-ripple/releases/download/#{version}/ledger_wallet_ripple_osx_#{version}.pkg"
  appcast 'https://github.com/LedgerHQ/ledger-wallet-ripple/releases.atom',
          checkpoint: 'e97c734dc9ad42f09a2f0e68c7d21cc6664b3378d6d5e61ae4fbcc912bb01092'
  name 'Ledger Wallet Ripple'
  homepage 'https://www.ledgerwallet.com/apps/ripple'

  pkg "ledger_wallet_ripple_osx_#{version}.pkg"

  uninstall pkgutil: 'co.ledger.wallet.ripple'
end
