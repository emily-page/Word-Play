//
//  firstViewController.swift
//  Word Play
//
//  Created by ios6 on 11/10/16.
//  Copyright © 2016 ios6. All rights reserved.
//
import UIKit

class firstViewController: UIViewController
{
    @IBOutlet weak var verbTextField: UITextField!
    @IBOutlet weak var mySecondButton: UIButton!
    var myMadLib2 = MadLib()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let nvc = segue.destination as! secondViewController
        myMadLib2.verb = verbTextField.text!
        nvc.myMadLib3 = myMadLib2
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        mySecondButton.isEnabled = false
        navigationItem.title = myMadLib2.noun
    }
    func textField(_ textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool
    {
        if verbTextField.text != ""
        {
            mySecondButton.isEnabled = true
        }
        return true
    }

    @IBAction func verbButton(_ sender: AnyObject)
    {
        
    }
}
