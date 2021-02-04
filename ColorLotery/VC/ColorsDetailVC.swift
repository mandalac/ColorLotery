//
//  ColorsDetailVC.swift
//  ColorLotery
//
//  Created by Vasili Mandalac on 2/3/21.
//

import UIKit

class ColorsDetailVC: UIViewController {
    
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue
    }
}
