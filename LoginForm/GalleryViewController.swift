//
//  GalleryViewController.swift
//  LoginForm
//
//  Created by Владимир Х. on 09.08.2022.
//

import UIKit

class GalleryViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: user.person.selfie)
    }
}
