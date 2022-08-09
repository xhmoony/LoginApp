//
//  GalleryViewController.swift
//  LoginForm
//
//  Created by Владимир Х. on 09.08.2022.
//

import UIKit

class GalleryViewController: UIViewController {
    var user: User!

    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: user.person.selfie)
     
    }
    


}
