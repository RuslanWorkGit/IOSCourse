//
//  ViewController.swift
//  HM-7
//
//  Created by Ruslan Liulka on 29.10.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var arrayOfCity = ["Kyiv", "Kharkiv", "Odesa", "Dnipro", "Lviv", "Zaporizhzhia", "Kryvyi Ri","Mykolaiv", "Mariupol", "Vinnytsia", "Poltava", "Chernihiv", "Cherkasy", "Sumy", "Khmelnytskyi", "Zhytomyr", "Chernivtsi", "Ivano-Frankivsk", "Ternopil", "Lutsk"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addElementsButton(_ sender: Any) {
//        let alertController = UIAlertController(title: "Add city", message: nil, preferredStyle: .alert)
//        
//        alertController.addTextField { textField in
//            textField.placeholder = "City name"
//        }
//        
//        let submitAction = UIAlertAction(title: "Submit", style: .default) { _ in
//            if let text = alertController.textFields?.first?.text {
//                self.arrayOfCity.append(text)
//                self.tableView.reloadData()
//            }
//        }
//        
//        alertController.addAction(submitAction)
//        present(alertController, animated: true)
        
        let alertController = UIAlertController(
            title: "Add city",
            message: nil,
            preferredStyle: .alert
        )
                
        alertController.addTextField { textField in
            textField.placeholder = "City name"
        }
                
        let submitAction = UIAlertAction(
            title: "Submit",
            style: .default
        ) { _ in
            if let text = alertController.textFields?.first?.text, !text.isEmpty {
                self.arrayOfCity.append(text)
                self.tableView
                    .reloadData() // оновлюємо таблицю після додавання міста
            }
        }
                
        alertController.addAction(submitAction)
        present(alertController, animated: true) // показуємо UIAlertController
        
//        print("Work")
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfCity.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayOfCity[indexPath.row]
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "CityViewController") as? CityViewController else  { return }
        viewController.mainNumber = indexPath.row + 1
        viewController.mainName = arrayOfCity[indexPath.row]
        navigationController?.pushViewController(viewController, animated: true)
    }
}
