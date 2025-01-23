//
//  ColorViewController.swift
//  3+viewcolor
//
//  Created by woo on 1/23/25.
//

import UIKit

class ColorViewController: UIViewController {
    
    var colorR = 0
    var colorG = 0
    var colorB = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        let backColor = UIColor(
            red: CGFloat(colorR) / 256.0,
            green: CGFloat(colorG) / 256.0,
            blue: CGFloat(colorB) / 256.0,
            alpha: 1.0
            )
        view.backgroundColor = backColor
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    */

}
