cask 'digital-power-station' do
  version '2.1.0.8,2017.04'
  sha256 '2432917002f4aca81a51939d281e643bae64241053dc06284f3f4b5396507760'

  url "https://bongiovidps.com/wp-content/uploads/#{version.after_comma.dots_to_slashes}/Bongiovi_DPS_Mac_Setup.zip"
  name 'Bongiovi Digital Power Station Plugin'
  homepage 'https://bongiovidps.com/'

  pkg 'Bongiovi DPS.pkg'

  uninstall pkgutil: [
                       'com.bongiovi.pkg.BongioviDPS.*',
                       'com.bongiovi.pkg.DigitalPowerStation.tmp.pkg',
                     ],
            kext:    'com.bongiovi.DPSReflector',
            quit:    'com.bongiovi.DPS20'
end
