//
//  ComercialViewController.swift
//  Live-7
//
//  Created by Ruslan Liulka on 24.10.2024.
//

import UIKit

class ComercialViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrayOfPeople: [Person] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        arrayOfPeople = DataManager().getListOfPersons()
        tableView.reloadData()
        
        let nib = UINib(nibName: "ComercialTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "ComercialTableViewCell")
    }

}

extension ComercialViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfPeople.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ComercialTableViewCell") as! ComercialTableViewCell
        
        cell.configure(with: arrayOfPeople[indexPath.row])
        return cell
    }
    
    
}
