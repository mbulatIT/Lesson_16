//
//  ViewController.swift
//  ScrollViewTest
//
//  Created by Maksim Bulat on 10/19/20.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var usernameTextField: UITextField?
    var userAgeTextField: UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let count = UserDefaults.standard.value(forKey: .userCount) as? Int {
            self.count = count
        }
        //value(forKey: UserDefaultKey.userCount.rawValue) as? Int
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let alert = UIAlertController(title: "Person", message: "Insert value", preferredStyle: .alert)
        alert.addTextField { (textField) in
            self.usernameTextField = textField
            textField.placeholder = "Username"
        }
        alert.addTextField { (textField) in
            self.userAgeTextField = textField
            textField.placeholder = "Age"
        }
        
        alert.addAction(UIAlertAction(title: "Submit", style: .default, handler: { (_) in
            if let username = self.usernameTextField?.text {
                UserDefaults.standard.setValue(username, forKey: .username)
            }
            if let userAge = self.userAgeTextField?.text,
               let age = Int(userAge) {
                UserDefaults.standard.setValue(age, forKey: .userAge)
            }
        }))
        
        present(alert, animated: true)
    }

    @IBAction func onButtonPressed(_ sender: Any) {
        count += 5
        print(count)
        UserDefaults.standard.setValue(count, forKey: .userCount)
    }
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        UserDefaults.standard.setValue(0, forKey: .userCount)
        count = 0
        print(0)
    }
}

