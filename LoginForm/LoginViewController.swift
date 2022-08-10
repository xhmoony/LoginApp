//
//  ViewController.swift
//  LoginForm
//
//  Created by Владимир Х. on 02.08.2022.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet var loginForm: UITextField!
    @IBOutlet var passwordForm: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginForm.layer.cornerRadius = 25
        passwordForm.layer.cornerRadius = 25
    }

    // MARK: - Private properties
    private let user = User.getUser()
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }

        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                let userInfoVC = navigationVC.topViewController as! UserInformationViewController
                userInfoVC.user = user
            }
        }
    }
    // MARK: - Actions
    @IBAction func loginButton() {
        if loginForm.text != user.login || passwordForm.text != user.password {
            showAlert(tittle: "Error", message: "Try again", textField: loginForm)
        }
    }
    
    @IBAction func forgotLoginData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(tittle: "Well, it happens", message: "try \(user.login)")
        : showAlert(tittle: "Well, it happens", message: "try \(user.password)")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        loginForm.text = ""
        passwordForm.text = ""
    }
}


// MARK: - Private Methods
extension LoginViewController {
    private func showAlert (tittle: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: tittle, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Oh:(", style: .default) { _ in textField?.text = "" }
        alert.addAction(ok)
        present(alert, animated: true)
        }
    }

// MARK: - Keyboard (
extension LoginViewController: UITextViewDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginForm {
            passwordForm.becomeFirstResponder()
        } else {
            loginButton()
            performSegue(withIdentifier: "", sender: nil)
        }
        return true
    }
}
