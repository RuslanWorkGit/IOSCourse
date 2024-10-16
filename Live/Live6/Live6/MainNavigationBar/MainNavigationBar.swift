//
//  MainNavigationBar.swift
//  Live6
//
//  Created by Ruslan Liulka on 16.10.2024.
//

import UIKit

protocol MainNavigationBarDelegate {
    func navigationBarButtonPressed()
}

class MainNavigationBar: BaseUI {
  
    var delegate: MainNavigationBarDelegate?
    
    @IBAction func centralButtonPressed(_ sender: Any) {
        delegate?.navigationBarButtonPressed()
    }
}

