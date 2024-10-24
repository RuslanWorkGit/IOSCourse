//
//  DetailViewController.swift
//  Live-7
//
//  Created by Ruslan Liulka on 24.10.2024.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var centralLabel: UILabel!
    
    var name: String = "No name"
    override func viewDidLoad() {
        super.viewDidLoad()

        centralLabel.text = name
    }


}
