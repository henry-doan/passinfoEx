//
//  ViewController.swift
//  PassInfoEx
//
//  Created by Henry Doan on 6/25/21.
//

import UIKit

class ViewController: UIViewController, MyProtocol {
    func setResultOfBusinessLogic(valueSent: String) {
        <#code#>
    }
    

    @IBOutlet weak var myTextField: UITextField!
    
    var valueSentFromSecondViewController:String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let valueToDisplay = valueSentFromSecondViewController:String
        {
               print("Value from display = \(valueToDisplay)")
         }


   }


    func setValueFromDisplay(valueSent: String)
    {
        self.valueSentFromDisplay = valueSent
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
           
       // Take user to SecondViewController
       self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

