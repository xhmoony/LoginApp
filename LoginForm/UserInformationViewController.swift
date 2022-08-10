//
//  SubscriptionsViewController.swift
//  LoginForm
//
//  Created by Владимир Х. on 09.08.2022.
//

import UIKit

class UserInformationViewController: UIViewController {
    var user: User!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageViewController = segue.destination as? GalleryViewController else { return }
        imageViewController.user = user
    }
}
