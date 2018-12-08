//
//  ViewController.swift
//  TypeAlert
//
//  Created by leonardo hernandez on 12/6/18.
//  Copyright © 2018 leonardo hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func actionAlert(_ sender: AnyObject) {
        
        let alertController = UIAlertController(title: "My Title", message: "This is an alert", preferredStyle:.alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            print("oyu heve pressend the cancel button")
        }
        alertController.addAction(cancelAction)
        
        let OKAction = UIAlertAction(title: "OK", style: .default) { _ in
            print("you have pressed OK button");
        }
        alertController.addAction(OKAction)
        
        self.present(alertController, animated: true, completion:{ () -> Void in
            //your code here
            print("leonardo")
        })
        
        
    }
    

    @IBAction func actionSheet(_ sender: Any) {
        
        let alertController = UIAlertController(title: "My Title", message: "This is an alert", preferredStyle:.actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            print("oyu heve pressend the cancel button")
        }
        
        alertController.addAction(cancelAction)
        
        let OKAction = UIAlertAction(title: "OK", style: .default) { _ in
            print("you have pressed OK button");
        }
        alertController.addAction(OKAction)

        self.present(alertController, animated: true, completion:{ () -> Void in
            //your code here
            print("mostramos alerta")
        })
    }


    @IBAction func actionForm(_ sender: AnyObject) {
        
        let alertController = UIAlertController(title: "My Title", message: "This is an alert", preferredStyle:.alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            print("you heve pressend the cancel button")
        }
        
        alertController.addAction(cancelAction)
        
        let OKAction = UIAlertAction(title: "OK", style: .default) { _ in
            print("you have pressed OK button");
            
            let userName = alertController.textFields![0].text
            let password = alertController.textFields![1].text
            
            self.doSomething(userName, password: password)
        }
         alertController.addAction(OKAction)
        
        alertController.addTextField(configurationHandler: {(textField : UITextField!) in
            textField.placeholder = "User Name"
            textField.isSecureTextEntry = false
        })
        
        alertController.addTextField(configurationHandler: {(textField : UITextField!) in
            textField.placeholder = "Password"
            textField.isSecureTextEntry = true
        })
        
        self.present(alertController, animated: true, completion:{ () -> Void in
            //your code here
        })
        
    }
    
    @objc func doSomething(_ userName: String?, password: String?) {
        print("username: \(userName ?? "")  password: \(password ?? "")")
    }
    
}

