//
//  SecondViewController.swift
//  ClassWithText
//
//  Created by Venky on 12/09/23.
//

import UIKit

protocol DataSendDelegate {
    func sendToFirVC(myData:String)
}

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var inputTextField: UITextField!
    
    var delegate: DataSendDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func onTapButton(_ sender: UIButton) {
        
        if let dataToSent = self.inputTextField.text {
            
            self.delegate?.sendToFirVC(myData: dataToSent)
            dismiss(animated: <#T##Bool#>)
        }
        
        
    }
}
