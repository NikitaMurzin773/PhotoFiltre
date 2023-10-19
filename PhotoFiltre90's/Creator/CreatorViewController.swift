//
//  CreatorViewController.swift
//  PhotoFiltre90's
//
//  Created by Nikita Murzin on 14/06/2023.
//

import UIKit

class CreatorViewController: UIViewController {
    
    public var pictureLoad: UIImage?

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet private var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView.image = pictureLoad
        collectionView.dataSource = self

        let filtreCellNib = UINib(nibName: "FiltreCell", bundle: nil)
        collectionView.register(filtreCellNib, forCellWithReuseIdentifier: "FiltreCell")
        
        let filtreCellDahmerNib = UINib(nibName: "FiltreCellDahmer", bundle: nil)
        collectionView.register(filtreCellDahmerNib, forCellWithReuseIdentifier: "FiltreCellDahmer")
        
        let filtreCellInterstellarNib = UINib(nibName: "FiltreCellInterstellar", bundle: nil)
        collectionView.register(filtreCellInterstellarNib, forCellWithReuseIdentifier: "FiltreCellInterstellar")
        
        let filtreCellBladeRunnerNib = UINib(nibName: "FiltreCellBladeRunner", bundle: nil)
        collectionView.register(filtreCellBladeRunnerNib, forCellWithReuseIdentifier: "FiltreCellBladeRunner")
        
        let filtreCellHotelGrandBudapchtNib = UINib(nibName: "FiltreCellHotelGrandBudapcht", bundle: nil)
        collectionView.register(filtreCellHotelGrandBudapchtNib, forCellWithReuseIdentifier: "FiltreCellHotelGrandBudapcht")
       
    }
    

}

extension CreatorViewController: UICollectionViewDataSource {
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.item {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FiltreCell", for: indexPath) as!FiltreCell
            return cell
            
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FiltreCellDahmer", for: indexPath) as!FiltreCellDahmer
            return cell
            
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FiltreCellBladeRunner", for: indexPath) as!FiltreCellBladeRunner
            return cell
            
        case 3:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FiltreCellInterstellar", for: indexPath) as!FiltreCellInterstellar
            return cell
            
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FiltreCellHotelGrandBudapcht", for: indexPath) as! FiltreCellHotelGrandBudapcht
            return cell
            
        }
    }
}
