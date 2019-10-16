//
//  UIColor.swift
//  Word Play
//
//  Created by ios6 on 11/22/16.
//  Copyright © 2016 ios6. All rights reserved.
//

import UIKit

extension UIColor
{
    class func nounColor() -> UIColor
    {
        return UIColor(red: 255/255, green: 2/255, blue: 20/255, alpha: 1.0)
    }
    
    class func verbColor() -> UIColor
    {
        return UIColor(red: 232/255, green: 138/255, blue: 3/255, alpha: 1.0)
    }
    
    class func adjectiveColor() -> UIColor
    {
        return UIColor(red: 134/255, green: 3/255, blue: 232/255, alpha: 1.0)
    }
}
