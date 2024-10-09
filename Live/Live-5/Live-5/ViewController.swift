//
//  ViewController.swift
//  Live-5
//
//  Created by Ruslan Liulka on 04.10.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rect = CGRect(x: 50, y: 100, width: 200, height: 100)
        let topButton = UIButton(frame: rect)
        topButton.setTitle("Press me!", for: .normal)
        topButton.setTitleColor(.blue, for: .normal)
        topButton.backgroundColor = .lightGray
        view.addSubview(topButton)
         
    }
    
    

}

