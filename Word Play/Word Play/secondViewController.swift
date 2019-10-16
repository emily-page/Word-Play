//
//  secondViewController.swift
//  Word Play
//
//  Created by ios6 on 11/10/16.
//  Copyright © 2016 ios6. All rights reserved.
//
import UIKit

class secondViewController: UIViewController
{

    @IBOutlet weak var myThirdButton: UIButton!
    @IBOutlet weak var adjectiveTextField: UITextField!
    var myMadLib3 = MadLib()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let nvc = segue.destination as! thirdViewController
        myMadLib3.adjective = adjectiveTextField.text!
        nvc.myMadLib4 = myMadLib3
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        myThirdButton.isEnabled = false
        navigationItem.title = myMadLib3.noun + "," + myMadLib3.verb
    }
    func textField(_ textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool
    {
        if adjectiveTextField.text != ""
        {
            myThirdButton.isEnabled = true
        }
        return true
    }

    @IBAction func adjectiveButton(_ sender: AnyObject)
    {
        
    }
    
}
