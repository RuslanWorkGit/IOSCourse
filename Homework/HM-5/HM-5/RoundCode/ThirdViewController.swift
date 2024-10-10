//
//  ThirdViewController.swift
//  HM-5
//
//  Created by Ruslan Liulka on 10.10.2024.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let screenX = UIScreen.main.bounds.width
        let screenY = UIScreen.main.bounds.height
        let circleSize: CGFloat = 250
        
        let yellowCircle = createCircle(color: .systemYellow, size: circleSize, positition: CGPoint(x: screenX, y: screenY))
        yellowCircle.alpha = 0.5
        view.addSubview(yellowCircle)
        
        let redCircle = createCircle(color: .red, size: circleSize, positition: CGPoint(x: screenX + 200, y: screenY - 325))
        view.addSubview(redCircle)
        
        let greenCircle = createCircle(color: .systemGreen, size: circleSize, positition: CGPoint(x: screenX - 200, y: screenY + 325))
        view.addSubview(greenCircle)
        view.bringSubviewToFront(yellowCircle)
    }
    

    func createCircle(color: UIColor, size: CGFloat, positition: CGPoint) -> UIView {
        let circle = UIView(frame: CGRect(x: (positition.x - size) / 2, y: (positition.y - size) / 2, width: size, height: size))
        circle.layer.cornerRadius = size / 2
        circle.backgroundColor = color
        return circle
    }

}
