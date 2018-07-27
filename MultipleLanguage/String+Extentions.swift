//
//  String+Extentions.swift
//  MultipleLanguage
//
//  Created by Chung on 7/27/18.
//  Copyright © 2018 Chung. All rights reserved.
//

import Foundation
extension String {
    var localized: String {
        var currentLocale = ""
        if let locate = UserDefaults.standard.object(forKey: "locate") as? String {
            currentLocale = locate
        } else {
            currentLocale = "Base"
            UserDefaults.standard.set(currentLocale, forKey: "locate")
        }
        guard
            let bundlePath = Bundle.main.path(forResource: currentLocale, ofType: "lproj"),
            let bundle = Bundle(path: bundlePath) else {
                return self
        }
        return NSLocalizedString(self, tableName: nil, bundle: bundle, value: "", comment: "")
    }
    
}
