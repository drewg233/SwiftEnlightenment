//
//  LocalizeHelper.swift
//  Project 24 - Localizations
//
//  Created by Andrew Garcia on 4/2/16.
//  Copyright © 2016 Andrew Garcia. All rights reserved.
//

import Foundation

extension String {
    func localized(lang:String) -> String {
        let path = NSBundle.mainBundle().pathForResource(lang, ofType: "lproj")
        let bundle = NSBundle(path: path!)
        
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
}

