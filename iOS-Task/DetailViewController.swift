//
//  DetailViewController.swift
//  iOS-Task
//
//  Created by Likhit Garimella on 05/08/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var pop: UIView!
    
    func Properties() {
        
        pop.layer.cornerRadius = 40
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Properties()
        
    }
    
}   // #28
