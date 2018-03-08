//
//  ViewController.swift
//  TextValidation
//
//  Created by Muntasir on 8.03.2018.
//  Copyright © 2018 Muntasir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTickImage: UIImageView!
    @IBOutlet weak var passwordTickImage: UIImageView!
    
    @IBOutlet weak var usernameTxtFielf: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signInBtn(_ sender: Any) {
        
        // For the username check
        if usernameTxtFielf.text != "" {
            userTickImage.image = UIImage(named:"btn_success.png")
            userTickImage.isHidden = false
        } else {
            userTickImage.image = UIImage(named:"btn_wrong.png")
            userTickImage.isHidden = false

        }
        
        // For the password check
        if passwordTextField.text != "" {
            passwordTickImage.image = UIImage(named:"btn_success.png")
            passwordTickImage.isHidden = false

        } else {
            passwordTickImage.image = UIImage(named:"btn_wrong.png")
            passwordTickImage.isHidden = false

        }
    }
    
    func setupView(){// Hiding the imageViews by default
        userTickImage.isHidden = true
        passwordTickImage.isHidden = true
    }
}

