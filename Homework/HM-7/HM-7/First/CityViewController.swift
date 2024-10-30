//
//  CityViewController.swift
//  HM-7
//
//  Created by Ruslan Liulka on 29.10.2024.
//

import UIKit

class CityViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var number: UILabel!
    
    var mainNumber: Int  = 0
    var mainName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        name.text = mainName
        number.text = String(mainNumber)
    }
    



}
