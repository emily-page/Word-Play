//
//  ViewController.swift
//  Word Play
//
//  Created by ios6 on 11/10/16.
//  Copyright © 2016 ios6. All rights reserved.
//
import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{

    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var nounTextField: UITextField!
    
    var myMadLib1 = MadLib()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        myMadLib1.noun = nounTextField.text!
        myButton.isEnabled = false
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        if nounTextField.text != ""
        {
            myButton.isEnabled = true
        }
        return true
    }

    @IBAction func nounButton(_ sender: AnyObject)
    {
        
    }
    
    override func  prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let nvc = segue.destination as! firstViewController
        myMadLib1.noun = nounTextField.text!
        nvc.myMadLib2 = myMadLib1
    }
    
}
