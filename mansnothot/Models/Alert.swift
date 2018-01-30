//
//  Alert.swift
//  mansnothot
//
//  Created by C4Q on 1/30/18.
//  Copyright © 2018 Melissa He @ C4Q. All rights reserved.
//

import UIKit

//Message by Melissa: This should be used to create the flagging action sheets and other alerts automatically!!

class Alert {
    public static func create(withTitle title: String?, andMessage message: String?, withPreferredStyle preferredStyle: UIAlertControllerStyle) -> UIAlertController {
        return UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
    }
    
    public static func addAction(withTitle title: String?, style: UIAlertActionStyle, andHandler handler: ((UIAlertAction) -> Void)?, to alert: UIAlertController) -> UIAlertController {
        let alertAction = UIAlertAction(title: title, style: style, handler: handler)
        
        alert.addAction(alertAction)
        
        return alert
    }
}