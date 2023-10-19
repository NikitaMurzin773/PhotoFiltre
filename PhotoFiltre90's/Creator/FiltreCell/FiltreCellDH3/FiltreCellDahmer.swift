//
//  FiltreCellDahmer.swift
//  PhotoFiltre90's
//
//  Created by Nikita Murzin on 16/06/2023.
//

import UIKit

class FiltreCellDahmer:UICollectionViewCell {
    
    @IBOutlet private var IconImageViewDahmer: UIImageView!
    @IBOutlet private var filtreButtonDahmer: UIButton!
    
    // MARK: - Public
    func configure(icon: UIImage?, text: String) {
        IconImageViewDahmer.image = icon
        
    }
    
    // MARK: - View Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        IconImageViewDahmer.layer.cornerRadius = 34
        
        //
    }
    
    
}
    
    
    
    
    

