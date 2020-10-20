//
//  UserDefaults+Keys.swift
//  ScrollViewTest
//
//  Created by Maksim Bulat on 10/19/20.
//

import Foundation

extension UserDefaults {
    func setValue(_ value: Any?, forKey key: UserDefaultsKeys) {
        setValue(value, forKey: key.rawValue)
    }
    
    func value(forKey key: UserDefaultsKeys) -> Any? {
        value(forKey: key.rawValue)
    }
}
