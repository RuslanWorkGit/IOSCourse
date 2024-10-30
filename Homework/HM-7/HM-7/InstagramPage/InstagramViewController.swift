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
    }
    

    
}

extension InstagramViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}

extension InstagramViewController: UITableViewDelegate {
    
}
