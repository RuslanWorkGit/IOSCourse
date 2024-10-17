//
//  BallRunViewController.swift
//  HM-6
//
//  Created by Ruslan Liulka on 17.10.2024.
//

import UIKit

class BallRunViewController: UIViewController {

    let centralButton = UIButton()
    let ball = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        centralButton.setTitle("Run!", for: .normal)
        centralButton.frame = CGRect(x: (view.bounds.width - 200) / 2, y: view.bounds.height - 150, width: 200, height: 50)
        centralButton.center = view.center
        centralButton.setTitleColor(.black, for: .normal)
        view.addSubview(centralButton)
        
        centralButton.addTarget(self, action: #selector(runBall), for: .touchUpInside)
        
        let startPosition = CGPoint(x: self.view.bounds.minX + 24, y: self.view.bounds.minY + 32)
        ball.frame = CGRect(x: startPosition.x, y: startPosition.y,
                            width: 50, height: 50)
        ball.backgroundColor = .systemOrange
        ball.layer.cornerRadius = 25
        view.addSubview(ball)
    }
    
    
    
    @objc func runBall() {
        UIView.animateKeyframes(withDuration: 5.0, delay: 0.0, options: [.calculationModeLinear]) {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.2) {
                self.ball.center.x = self.view.bounds.maxX - 24 - self.ball.bounds.width / 2
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.2, relativeDuration: 0.2) {
                self.ball.center.y = self.view.bounds.maxY - 32 - self.ball.bounds.height / 2
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.4, relativeDuration: 0.2) {
                self.ball.center.x = self.view.bounds.minX + 24 + self.ball.bounds.width / 2
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.6, relativeDuration: 0.2) {
                self.ball.center.y = self.view.bounds.minY + 32 + self.ball.bounds.width / 2
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.8, relativeDuration: 0.2) {
                self.ball.alpha = 0
            }
        } completion: { finished in
            print("Animated finished!")
        }
    }

}
