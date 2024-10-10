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
        
        let rect1 = CGRect(x: 70, y: 150, width: 200, height: 100)
        let topButton1 = UIButton(frame: rect1)
        topButton1.setTitle("Press me!", for: .normal)
        topButton1.setTitleColor(.blue, for: .normal)
        topButton1.backgroundColor = .systemMint
        view.addSubview(topButton1)
        
        view.bringSubviewToFront(topButton)
        
        let rect2 = CGRect(x: 25, y: 25, width: 300, height: 600)
        let mainButton = MainButton(frame: rect2)
        view.addSubview(mainButton)
    }
    
    

}

class MainButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        self.backgroundColor = .green
    }
    
    func setHidenState() {
        self.alpha = 0.2
    }
}

