//
//  ViewController.swift
//  SimpleChat
//
//  Created by Mimi Chenyao on 2/2/18.
//  Copyright © 2018 Mimi Chenyao. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ref = Database.database().reference(fromURL: "https://simple-chat-c0458.firebaseio.com/")
        ref.updateChildValues(["someValue": 123123])
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    }
    
    @objc func handleLogout() {
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }
}

