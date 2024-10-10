//
//  FourthViewController.swift
//  HM-5
//
//  Created by Ruslan Liulka on 10.10.2024.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let screenX = UIScreen.main.bounds.width
        let screenY = UIScreen.main.bounds.height

        let mainCircle = createCircle(color: .clear, size: UIScreen.main.bounds.width, position: CGPoint(x: screenX, y: screenY))
        mainCircle.clipsToBounds = true
        view.addSubview(mainCircle)
        
        let redCircle = createCircle(color: .systemRed, size: 260, position: CGPoint(x: screenX - screenX / 2, y: screenY / 2 - screenX / 2))
        mainCircle.addSubview(redCircle)
        
        let yellowCircle = createCircle(color: .systemYellow, size: 260, position: CGPoint(x: screenX + screenX / 2, y: screenY / 2 - screenX / 2))
        mainCircle.addSubview(yellowCircle)
        
        let greenCircle = createCircle(color: .systemGreen, size: 260, position: CGPoint(x: screenX + screenX / 2, y: screenY / 2 + screenX / 2))
        mainCircle.addSubview(greenCircle)
        
        let blueCircle = createCircle(color: .systemBlue, size: 260, position: CGPoint(x: screenX - screenX / 2, y: screenY / 2 + screenX / 2))
        mainCircle.addSubview(blueCircle)
                                    
    }
    
    func createCircle(color: UIColor, size: CGFloat, position: CGPoint) -> UIView {
        
        let circle = UIView(frame: CGRect(x: (position.x - size) / 2, y: (position.y - size) / 2, width: size, height: size))
        circle.layer.cornerRadius = size / 2
        circle.backgroundColor = color
        return circle
    }
    
}
