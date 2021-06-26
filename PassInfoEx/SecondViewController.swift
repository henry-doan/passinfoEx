//
//  SecondViewController.swift
//  PassInfoEx
//
//  Created by Henry Doan on 6/25/21.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {

    var myStringValue:String?

    override func viewDidLoad() {
       super.viewDidLoad()

       // Do any additional setup after loading the view.
    }
       
    override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(animated)
       
       // We will simply print out the value here
       print("The value of myStringValue is: \(myStringValue!)")
    }

    override func didReceiveMemoryWarning() {
       super.didReceiveMemoryWarning()
       // Dispose of any resources that can be recreated.
    }

}
