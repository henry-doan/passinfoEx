//
//  ViewController.swift
//  PassInfoEx
//
//  Created by Henry Doan on 6/25/21.
//

import UIKit

class ViewController: UIViewController, MyProtocol {
    func setResultOfBusinessLogic(valueSent: String) {
        if (valueSent != nil) {
               print("Value from bus = \(valueSent)")
         }
    }
    

    @IBOutlet weak var myTextField: UITextField!
    
    var valueSentFromSecondViewController:String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let valueToDisplay = valueSentFromSecondViewController
        
        if (valueToDisplay != nil) {
               print("Value from display = \(valueToDisplay)")
         }


   }


    func setValueFromDisplay(valueSent: String)
    {
        self.valueSentFromSecondViewController = valueSent
    }
    
    @IBAction func myButtonTapped(_ sender: Any) {
        // Check if value from myTextField is not empty
       if myTextField.text?.isEmpty == true
       {
           return
       }

       // Instantiate SecondViewController
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
           
       // Set "Hello World" as a value to myStringValue
       secondViewController.myStringValue = myTextField.text
       secondViewController.delegate = self
       // Take user to SecondViewController
       self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

