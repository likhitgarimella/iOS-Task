//
//  DetailContViewController.swift
//  iOS-Task
//
//  Created by Likhit Garimella on 05/08/21.
//

import UIKit

class DetailContViewController: UIViewController {
    
    @IBOutlet var clockView: UIView!
    
    func Properties() {
        
        clockView.layer.cornerRadius = 8
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Properties()
        
    }
    
}   // #28
