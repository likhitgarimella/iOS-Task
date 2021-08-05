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

extension BlogsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BlogCell", for: indexPath) as! BlogCell
        cell.backgroundColor = UIColor.white
        cell.myImage.image = items[indexPath.row]
        return cell
    }
    
    func tableView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        /// ref for model 'post'
        let post = indiaPosts[indexPath.row]
        /// storing model's strings in an arrays
        let arr1 = post.leftTag
        let arr2 = post.readTime
        let arr3 = post.heading
        let arr4 = post.photoUrl
        let arr5 = post.description
        let arr6 = post.urlString
        /// embedding those array strings in global variables
        vc.name = arr1!
        vc.time = arr2!
        vc.head = arr3!
        vc.photourl = arr4!
        vc.desc = arr5!
        vc.url = arr6!
        self.present(vc, animated: true, completion: nil)
    }
    
}   // #68
