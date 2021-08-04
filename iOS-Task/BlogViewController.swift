//
//  BlogViewController.swift
//  iOS-Task
//
//  Created by Likhit Garimella on 04/08/21.
//

import UIKit

class BlogViewController: UIViewController {
    
    // Outlets
    @IBOutlet var segment: UISegmentedControl!
    @IBOutlet var blogView: UIView!
    @IBOutlet var newsView: UIView!
    
    func SegmentFontColor() {
        
        // Selected option color
        segment.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.darkGray], for: .selected)
        // Color of other options
        segment.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.darkGray], for: .normal)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideKeyboardWhenTappedAround()
        SegmentFontColor()
        
    }
    
    // Switch Index of Segmented Control
    @IBAction func switchSegment(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            blogView.alpha = 1
            newsView.alpha = 0
        }
        if sender.selectedSegmentIndex == 1 {
            blogView.alpha = 0
            newsView.alpha = 1
        }
        
    }
    
}   // #49
