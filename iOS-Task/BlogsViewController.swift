//
//  BlogsViewController.swift
//  iOS-Task
//
//  Created by Likhit Garimella on 05/08/21.
//

import UIKit

class BlogsViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var items = [UIImage(named: "one"), UIImage(named: "one"), UIImage(named: "one"), UIImage(named: "two"), UIImage(named: "two"), UIImage(named: "two")]
    
    func Properties() {
        
        tableView.backgroundColor = UIColor.white
        tableView.estimatedRowHeight = 140
        tableView.rowHeight = UITableView.automaticDimension
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Properties()
        
    }
    
}

extension BlogsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BlogCell", for: indexPath) as! BlogCell
        cell.backgroundColor = UIColor.white
        cell.myImage.image = items[indexPath.row]
        let bgColorView = UIView()
        bgColorView.backgroundColor = UIColor.white
        cell.selectedBackgroundView = bgColorView
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        vc.modalPresentationStyle = .popover
        self.present(vc, animated: true, completion: nil)
    }
    
}   // #56
