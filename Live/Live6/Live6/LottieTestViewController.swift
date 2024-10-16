//
//  LottieTestViewController.swift
//  Live6
//
//  Created by Ruslan Liulka on 15.10.2024.
//

import UIKit
import Lottie

class LottieTestViewController: UIViewController, MainNavigationBarDelegate {

    @IBOutlet weak var navigationCustomView: MainNavigationBar!
    
    private var animatio: LottieAnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        animatio = .init(name: "house")
        animatio?.frame = CGRect(x: 50, y: 300, width: 100, height: 100)
//        animatio?.center = self.view.center
        //animatio?.frame = view.bounds
        animatio?.contentMode = .scaleAspectFit
        animatio?.loopMode = .loop
        animatio?.animationSpeed = 1.5
        view.addSubview(animatio!)
        animatio?.play()
        
        
        let animationView = LottieAnimationView()
        animationView.loopMode = .loop
        animationView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        animationView.center = self.view.center
        self.view.addSubview(animationView)
        //view = animationView
        
        let url = Bundle.main.url(forResource: "Animation-H", withExtension: "lottie")!
        
        DotLottieFile.loadedFrom(url: url) { result in
            switch result {
            case .success(let animation):
                animationView.loadAnimation(from: animation)
                animationView.loopMode = .loop
                animationView.play()
            case .failure(let failure):
                print(failure)
            }
        }
        
        
        navigationCustomView.delegate = self
    }
    
    func navigationBarButtonPressed() {
        print("Button Pressed!")
    }
    


}
