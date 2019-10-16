//
//  thirdViewController.swift
//  Word Play
//
//  Created by ios6 on 11/10/16.
//  Copyright © 2016 ios6. All rights reserved.
//
import UIKit

class thirdViewController: UIViewController
{
    @IBOutlet weak var finalLabel: UILabel!
    var myMadLib4 = MadLib()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        finalLabel.text = MadLib().theStory()
        
        navigationItem.title = myMadLib4.noun + "," + myMadLib4.verb + "," + myMadLib4.adjective
        finalLabel.attributedText = myMadLib4.attributedStory()
    }
}