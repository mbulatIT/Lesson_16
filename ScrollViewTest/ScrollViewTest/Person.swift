//
//  Person.swift
//  ScrollViewTest
//
//  Created by Maksim Bulat on 10/19/20.
//

import Foundation

class Person: Codable {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
