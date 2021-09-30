//
//  ProductsVC.swift
//  My-Shop
//
//  Created by Ahmed Sayed on 22/07/2021.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    @IBOutlet weak var listToggleBtn: UIButton!
    
    var collectionIsGrid = true
    
    private(set) public var products = [Product]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.delegate = self
        productsCollection.dataSource = self
    }
    
    
    func initProducts(category: Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title       // Products page navigation title
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = ProductCell()
        
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionIsGrid ? "ProductCell" : "ProductListCell", for: indexPath) as! ProductCell

        let product = products[indexPath.row]
        cell.updateViews(product: product)
        return cell
    }
    
    // to adjust width and height
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionIsGrid {       // if collectionIsGrid == true
            let width = collectionView.frame.width / 2.1
            //        let height = collectionView.frame.height / 2.1
            return CGSize(width: width, height: 280)
        } else {
            let width = collectionView.frame.width
            return CGSize(width: width, height: 150)
        }
    }
    
    @IBAction func listToggleBtnTap(_ sender: Any) {
        if collectionIsGrid {
            collectionIsGrid = false
            listToggleBtn.setTitle("Grid", for: .normal)
        } else {
            collectionIsGrid = true
            listToggleBtn.setTitle("List", for: .normal)
        }
        
        productsCollection.reloadData()
    }
    
    
    
}



//func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//    if collectionIsGrid == true {
//        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
//            let product = products[indexPath.row]
//            cell.updateViews(product: product)
//            return cell
//        } else {
//            return ProductCell()        // empty cell
//        }
//    } else {
//        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductListCell", for: indexPath) as? ProductCell {
//            let product = products[indexPath.row]
//            cell.updateViews(product: product)
//            return cell
//        } else {
//            return ProductCell()        // empty cell
//        }
//    }
//}
