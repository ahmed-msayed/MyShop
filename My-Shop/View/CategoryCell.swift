//
//  CategoryCell.swift
//  My-Shop
//
//  Created by Ahmed Sayed on 21/07/2021.
//

import UIKit

class CategoryCell: UITableViewCell {

    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    override func awakeFromNib() {
        self.categoryImage.layer.cornerRadius = 30
    }
    
    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
