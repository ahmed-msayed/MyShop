//
//  Category.swift
//  My-Shop
//
//  Created by Ahmed Sayed on 21/07/2021.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
