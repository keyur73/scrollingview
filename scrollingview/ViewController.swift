//
//  ViewController.swift
//  scrollingview
//
//  Created by Keyur Khambhadiya on 03/04/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField1.delegate = self
        textField2.delegate = self
        self.hideKeyboardTappedAround()
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension UIViewController{
    func hideKeyboardTappedAround (){
        let tap:UITapGestureRecognizer = UITapGestureRecognizer (target:self, action:#selector(UIViewController.dismissKeyboard) )
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard(){
        view.endEditing (true)
    }
}
