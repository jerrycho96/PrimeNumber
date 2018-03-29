//
//  ViewController.swift
//  PrimeNumber
//
//  Created by D7703_26 on 2018. 3. 29..
//  Copyright © 2018년 dit.ac.kr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblIn: UITextField!
    @IBOutlet weak var prime: UILabel!
    
    var isPrime = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btOk(_ sender: Any) {
        var number = Int(lblIn.text!)
        var isPrime = true
        
        if number == 1 {
            isPrime = false
        }
        
        if number != 2 && number != 1 {
            for i in 2..<number!  {
                
                if number! % i == 0 {
                    isPrime = false
                }
            }
        }
        if isPrime == true {
            prime.text = "Prime number"
           
        } else {
            prime.text = "Not Prime number"
           
        }
    }
    
    
    @IBAction func btReset(_ sender: Any) {
        
        prime.text! = ""
        lblIn.text! = ""
    }
    
}

