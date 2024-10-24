//
//  ViewController.swift
//  Live-7
//
//  Created by Ruslan Liulka on 23.10.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let arrayOfNames: [String] = ["Anna", "Bohdan", "Viktoria", "Dmytro", "Yulia", "Oleksandr", "Kateryna", "Ivan", "Nadiya", "Maksym", "Sofia", "Mykhailo", "Oleh", "Larysa", "Andriy", "Oksana", "Petro", "Tetiana", "Vasyl", "Lesya", "Ruslan", "Yana", "Arsen", "Bogdan"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SimpleTableViewCell") as! SimpleTableViewCell
        cell.bottomLabel.text = arrayOfNames[indexPath.row]
        cell.topLabel.text = "\(indexPath.row)"
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        viewController.name = arrayOfNames[indexPath.row]
        navigationController?.pushViewController(viewController, animated: true)
    }
}

