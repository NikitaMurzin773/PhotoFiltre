//
//  FiltreCell.swift
//  PhotoFiltre90's
//
//  Created by Nikita Murzin on 16/06/2023.
//

import UIKit

class FiltreCell :UICollectionViewCell {
    // MARK: - IBOutlets
    @IBOutlet private var iconImageView: UIImageView!
    @IBOutlet private var filtreButton: UIButton!
    
    // MARK: - Public
    func configure(icon: UIImage?, text: String) {
        iconImageView.image = icon
        
    }
    
    // MARK: - View Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        iconImageView.layer.cornerRadius = 34
        
        // 
    }
}
