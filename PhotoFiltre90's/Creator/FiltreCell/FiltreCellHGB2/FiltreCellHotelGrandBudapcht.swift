//
//  FiltreCellHotelGrandBudapcht.swift
//  PhotoFiltre90's
//
//  Created by Nikita Murzin on 16/06/2023.
//

import UIKit

class FiltreCellHotelGrandBudapcht:UICollectionViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet private var iconImageViewHGB: UIImageView!
    @IBOutlet private var filtreButtonHGB: UIButton!
    // MARK: - Public
    func configure(icon: UIImage?, text: String) {
        iconImageViewHGB.image = icon
        
    }
    
    // MARK: - View Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        iconImageViewHGB.layer.cornerRadius = 34
        
        //
    }
    
    
}
