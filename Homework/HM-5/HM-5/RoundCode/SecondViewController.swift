//
//  SecondViewController.swift
//  HM-5
//
//  Created by Ruslan Liulka on 10.10.2024.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let screenX = UIScreen.main.bounds.width
        let screenY = UIScreen.main.bounds.height
        
        let yellowCircle = createCircle(color: .yellow, size: CGSize(width: 250, height: 250), position: CGPoint(x: screenX , y: screenY))
        view.addSubview(yellowCircle)
        let redCircle = createCircle(color: .red, size: CGSize(width: 250, height: 250), position: CGPoint(x: screenX, y: screenY - 500))
        view.addSubview(redCircle)
        let greenCircle = createCircle(color: .green, size: CGSize(width: 250, height: 250), position: CGPoint(x: screenX, y: screenY + 500))
        view.addSubview(greenCircle)
        
    }
    
    func createCircle(color: UIColor, size: CGSize, position: CGPoint) -> UIView {
        
        let circle = UIView(frame: CGRect(x: (position.x - size.width) / 2, y: (position.y - size.height) / 2, width: size.width, height: size.width))
        circle.backgroundColor = color
        circle.layer.cornerRadius = size.width / 2
        return circle
    }
    
    

}


