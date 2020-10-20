//
//  UserDefaults+Keys.swift
//  ScrollViewTest
//
//  Created by Maksim Bulat on 10/19/20.
//

import Foundation

extension UserDefaults {
    func setValue(_ value: Any?, forKey key: UserDefaultKey) {
        setValue(value, forKey: key.rawValue)
    }
}
