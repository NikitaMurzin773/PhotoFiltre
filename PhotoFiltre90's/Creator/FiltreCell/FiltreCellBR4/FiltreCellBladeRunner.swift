//
//  FiltreCellBladeRunner.swift
//  PhotoFiltre90's
//
//  Created by Nikita Murzin on 16/06/2023.
//

import UIKit

class FiltreCellBladeRunner:UICollectionViewCell {
    
    @IBOutlet private var IconImageViewBR: UIImageView!
    
    @IBOutlet private var filtreButtonBR: UIButton!
    
    // MARK: - Public
    func configure(icon: UIImage?, text: String) {
        IconImageViewBR.image = icon
        
    }
    
    // MARK: - View Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        IconImageViewBR.layer.cornerRadius = 34
        
        //
    }
    
    
}
    
    
    
    
    

