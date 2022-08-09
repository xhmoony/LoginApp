//
//  WelcomeViewController.swift
//  LoginForm
//
//  Created by Владимир Х. on 03.08.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    var user: User!
    
    private let firstColor = UIColor(
        red: 251/255,
        green: 159/255,
        blue: 137/255,
        alpha: 1
        )
    
    private let secondColor = UIColor(
        red: 186/255,
        green: 165/255,
        blue: 255/255,
        alpha: 1
        )

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
        welcomeLabel.text = "Welcome, \(user.person.fullName)!"
    }
}
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 1, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
        }

   
}
