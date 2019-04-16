//
//  ViewController.swift
//  loginPage
//
//  Created by Mykola Vasylkiv on 4/14/19.
//  Copyright © 2019 Mykola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emailTextField: UITextField = {
        let email = UITextField()
            email.placeholder = "email"
            email.textColor = .white
            email.backgroundColor = .red
        
        return email
    }()
    
    let passwordTextField: UITextField = {
        let password = UITextField()
            password.placeholder = "password"
            password.textColor = .white
            password.backgroundColor = .blue
        
        return password
    }()
    
    let logInButton: UIButton = {
        let logIn = UIButton(type: .system)
            logIn.setTitleColor(.white, for: .normal)
            logIn.setTitle("Log In", for: .normal)
            logIn.backgroundColor = .purple
        
        return logIn
    }()
    
    let haveAccountButton: UIButton = {
        let haveAccount = UIButton(type: .system)
            haveAccount.backgroundColor = GREEN_THEME
        let attributeTitle = NSAttributedString(string: "Don't have an account", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        haveAccount.setAttributedTitle(attributeTitle, for: .normal)
        return haveAccount
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = GREEN_THEME
        
        setupTextFieldComponents()
        setupLoginButton()
        setupHavaAccoutnButton()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func setupTextFieldComponents() {
        setupEmailTextFiled()
        setupPasswordTextFiled()
    }
    
    fileprivate func setupEmailTextFiled() {
        view.addSubview(emailTextField)
        
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        emailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
    
    fileprivate func setupPasswordTextFiled() {
        view.addSubview(passwordTextField)
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 8).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    fileprivate func setupLoginButton() {
        view.addSubview(logInButton)
        
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        logInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 8).isActive = true
        logInButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        logInButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        logInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    fileprivate func setupHavaAccoutnButton() {
        view.addSubview(haveAccountButton)
        
        haveAccountButton.translatesAutoresizingMaskIntoConstraints = false
        haveAccountButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        haveAccountButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 12).isActive = true
        haveAccountButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12).isActive = true
        haveAccountButton.heightAnchor.constraint(equalToConstant: 30).isActive = true

        
    }
    
    


}

