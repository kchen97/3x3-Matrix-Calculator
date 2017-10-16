//
//  InputMatrixVC.swift
//  3x3MatrixCalculator
//
//  Created by Korman Chen on 10/15/17.
//  Copyright © 2017 Korman Chen. All rights reserved.
//

import UIKit

class InputMatrixVC: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    @IBOutlet weak var RowColumnTextField: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RowColumnTextField.delegate = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var someMatrix = Array(repeating: [Int](), count: 3)
        
        for tag in 1...9 {
            let rcTextField = view.viewWithTag(tag) as! UITextField
            guard !(rcTextField.text?.isEmpty)! else {
                fatalError("Invalid/empty text field -> \(rcTextField.placeholder ?? "")")
            }
            
            let val = Int(rcTextField.text!)
            someMatrix[(tag - 1) % 3].append(val!)
        }
        
        let MatrixOpVC = segue.destination as! MatrixOperationsVC
        MatrixOpVC.matrixA.set(someMatrix)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

