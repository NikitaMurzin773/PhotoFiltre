//
//  FiltreCellInterstellar.swift
//  PhotoFiltre90's
//
//  Created by Nikita Murzin on 17/06/2023.
//

import UIKit

class FiltreCellInterstellar:UICollectionViewCell {

    @IBOutlet private var IconImageViewInt: UIImageView!
    
    @IBOutlet private var filtreButtonInt: UIButton!
    

// MARK: - Public
func configure(icon: UIImage?, text: String) {
    IconImageViewInt.image = icon
    
  }

// MARK: - View Lifecycle
override func awakeFromNib() {
    super.awakeFromNib()
    IconImageViewInt.layer.cornerRadius = 34
    
    //
  }


}
