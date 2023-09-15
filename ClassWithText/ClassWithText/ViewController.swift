//
//  ViewController.swift
//  ClassWithText
//
//  Created by Venky on 12/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var textLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func ButtonAction(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil)
        let storyBoard =  vc.instantiateViewController(identifier: "SecondViewController") as? SecondViewController
        
        
       
    }
    

}

