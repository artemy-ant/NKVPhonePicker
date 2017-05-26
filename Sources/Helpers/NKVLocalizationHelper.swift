//
// Be happy and free :)
//
// Nik Kov
// nik-kov.com
//

import Foundation

struct NKVLocalizationHelper {
    /// Returns the code of the country (region) of the current localization.
    ///
    /// Ex: For Russian phone language it would be "RU".
    ///
    /// If region code didn't found - it would be "JM" by default.
    static var currentCode: String? {
        let currentLocale = NSLocale.currentLocale()
        let regionCode = currentLocale.objectForKey(NSLocaleCountryCode) as! String
        return regionCode.uppercaseString
    }
    
    /// Returns a localized country name by a country code of the current locale.
    static func countryName(by countryCode: String) -> String? {
        return NSLocale.currentLocale().displayNameForKey(NSLocaleCountryCode, value: countryCode)
    }
}
