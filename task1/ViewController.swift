//
//  ViewController.swift
//  lesson1
//
//  Created by Admin on 13.02.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func button(_ sender: UIButton) {
        let text = textfield.text!
        
        let numbers = text.split(separator: " ").compactMap {Int($0)}

        let sum = numbers.reduce(0, +)
    
        SumSingletonManager.shared.sum = SumSingleton(sum: sum)
        
        performSegue(withIdentifier: "show", sender: sender)
    }
}
