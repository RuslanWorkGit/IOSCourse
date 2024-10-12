
//
//  ViewController.swift
//  Live-6
//
//  Created by Ruslan Liulka on 11.10.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    
    @IBOutlet weak var bottomViewBottoConstaint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }

    @IBAction func pressMePressed(_ sender: Any) {
        
       // UIView.animateKeyframes(withDuration: <#T##TimeInterval#>, delay: <#T##TimeInterval#>, animations: <#T##() -> Void#>)
        UIView.animate(withDuration: 5.0) { [weak self] in
            
            guard let self else { return }
            self.topView.backgroundColor = .green
            self.topView.layer.cornerRadius = self.topView.bounds.height / 2
            self.topView.center = self.view.center
            self.topView.alpha = 0.3
            self.topView.transform = CGAffineTransform(rotationAngle: .pi)
            self.topView.transform = CGAffineTransform(scaleX: 2, y: 2)
            
            self.bottomViewBottoConstaint.constant = 250
            self.view.layoutIfNeeded()
            self.view.bringSubviewToFront(topView)
        } completion: { completed in
            self.view.backgroundColor = .black
            UIView.animate(withDuration: 0.5) {
                self.view.backgroundColor = .green 
            }
        }
    }
    
}

