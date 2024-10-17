//
//  BounceBallViewController.swift
//  HM-6
//
//  Created by Ruslan Liulka on 17.10.2024.
//

import UIKit

class BounceBallViewController: UIViewController {

    let ball = UIView()
    var isBouncing = false
    override func viewDidLoad() {
        super.viewDidLoad()

        let buttonPosition = CGRect(x: (self.view.bounds.width - 300) / 2, y: 100, width: 300, height: 100)
        let topButton = UIButton(frame: buttonPosition)
        topButton.setTitle("Bounce!", for: .normal)
        topButton.titleLabel?.font = .systemFont(ofSize: 30)
        topButton.setTitleColor(.black, for: .normal)
        view.addSubview(topButton)
        
        topButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        ball.frame = CGRect(x: 0, y: 0, width: 120, height: 120)
        ball.center = view.center
        ball.backgroundColor = .systemRed
        ball.layer.cornerRadius = 60
        view.addSubview(ball)
    }

    @objc func buttonTapped() {
        if !isBouncing {
            isBouncing.toggle()
            bouncing()
        }
    }
    
    func bouncing() {
        UIView.animate(withDuration: 0.6, delay: 0, options: [.curveEaseIn, .allowUserInteraction]) {
            self.ball.center.y += 300
        } completion: { finished in
            UIView.animate(withDuration: 1.0, delay: 0.2, options: [.curveEaseOut, .allowUserInteraction]) {
                self.ball.center.y -= 300
            } completion: { finished in
                if self.isBouncing {
                    self.bouncing()
                }
            }
        }
    }


}
