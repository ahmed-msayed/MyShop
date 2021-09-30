//
//  DataService.swift
//  My-Shop
//
//  Created by Ahmed Sayed on 21/07/2021.
//

import Foundation

class DataService {
    static let instance = DataService()       // singleton to have ony one copy of it in memory
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
    
    
    
    
    private let hats = [
        Product.init(title: "Devslopes Logo Beanie", price: "18$", imageName: "hat01.png"),
        Product.init(title: "Devslopes Logo Hat Black", price: "22$", imageName: "hat02.png"),
        Product.init(title: "Devslopes Logo Hat White", price: "22$", imageName: "hat03.png"),
        Product.init(title: "Devslopes Logo Snapback", price: "20$", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devs Hoodie Logo Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Black", price: "$32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devs Badge Shirt Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devs Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()      // empty
    
    
    
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "SHIRTS":
            return getShirts()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    

    
    func getHats() -> [Product]{
        return hats
    }
    
    func getHoodies() -> [Product]{
        return hoodies
    }
    
    func getShirts() -> [Product]{
        return shirts
    }
    
    func getDigitalGoods() -> [Product]{
        return digitalGoods
    }
    

}
