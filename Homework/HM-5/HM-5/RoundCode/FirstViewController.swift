//
//  FirstViewController.swift
//  HM-5
//
//  Created by Ruslan Liulka on 10.10.2024.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let circleWidth: CGFloat = 300
        
        let greenCirgleCoord = CGRect(x: (UIScreen.main.bounds.width - circleWidth) / 2, y: (UIScreen.main.bounds.height - circleWidth) / 2, width: circleWidth, height: circleWidth)
        let greenCircle = UIView(frame: greenCirgleCoord)
        greenCircle.backgroundColor = .green
        greenCircle.layer.cornerRadius = circleWidth / 2
        view.addSubview(greenCircle)
    }
    



}
