//
//  ViewController.swift
//  PhotoFiltre90's
//
//  Created by Nikita Murzin on 14/06/2023.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var pictureLoad: UIImageView!
    
    private var imagePicker: ImagePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imagePicker = ImagePicker(presentationController: self, delegate: self)
        
    }
    
    @IBAction func editAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Creator", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "Creator")
        as!CreatorViewController
        vc.pictureLoad = self.pictureLoad.image
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func addAction(_ sender: Any) {
        self.imagePicker.present(from: sender as! UIView)
    }
    
    
}

extension ViewController: ImagePickerDelegate {
    
    func didSelect(image: UIImage?) {
        self.pictureLoad.image = image
    }
}
