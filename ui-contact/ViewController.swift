//
//  ViewController.swift
//  ui-contact
//
//  Created by PM Academy 3 on 6/26/18.
//  Copyright © 2018 PM Academy 3. All rights reserved.
//

import UIKit
import Device

class ViewController: UIViewController {
   
    @IBOutlet weak var connectionView: UIView!
    @IBOutlet weak var introductionView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        connectionView.decorate()
        introductionView.decorate()
        switch Device.size(){
        case .screen5_8Inch :
            scrollView.isScrollEnabled = false
        default:
            scrollView.isScrollEnabled = true
        }
    }
    
}

extension UIView{
    func decorate(){
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = 10
        layer.borderWidth = 1.0
    }
}
