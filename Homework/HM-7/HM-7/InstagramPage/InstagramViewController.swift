//
//  InstagramViewController.swift
//  HM-7
//
//  Created by Ruslan Liulka on 29.10.2024.
//

import UIKit

class InstagramViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
        
        let nib = UINib(nibName: "CustomInstagramTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CustomInstagramTableViewCell")
        tableView.reloadData()
    }
    
}

extension InstagramViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfPosts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomInstagramTableViewCell") as? CustomInstagramTableViewCell else { return UITableViewCell()}
        cell.configure(with: arrayOfPosts[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    
}

extension InstagramViewController: UITableViewDelegate {
    
}
