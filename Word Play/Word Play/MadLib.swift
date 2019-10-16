//
//  MadLib.swift
//  Word Play
//
//  Created by ios6 on 11/11/16.
//  Copyright © 2016 ios6. All rights reserved.
//

import UIKit

class MadLib: NSObject
{
    var noun: String = ""
    var verb: String = ""
    var adjective: String = ""
    
    func theStory() -> String
    {
        
        return "Yesterday I went to the moon and found a/n \(noun). It was very \(adjective). I \(verb) when I found it because I was so suprised."
    }
    var myString = String()
    var attributedString = NSMutableAttributedString()
    
   func attributedStory() -> NSMutableAttributedString
    {
        myString = theStory()
        attributedString = NSMutableAttributedString(string: myString)
        changeStringColor(noun, color: UIColor.nounColor())
        changeStringColor(verb, color: UIColor.verbColor())
        changeStringColor(adjective, color: UIColor.adjectiveColor())
        
        let stringLength = attributedString.length
        let font = UIFont(name: "NoteWorthy", size: 20)
        attributedString.addAttribute(NSFontAttributeName, value: font!, range: NSMakeRange(0, stringLength))
        return attributedString
    }
    
    func changeStringColor(_ word: String, color: UIColor)
    {
        let regularExpression = try?NSRegularExpression(pattern: word, options: [])
    let regularMatches = regularExpression!.matches(in: myString, options: [], range: NSMakeRange(0, attributedString.length))
        
        for regularMatch in regularMatches
        {
            let wordRange = regularMatch.rangeAt(0)
            attributedString.addAttribute(NSForegroundColorAttributeName, value: color, range: wordRange)
        }
    }
}
