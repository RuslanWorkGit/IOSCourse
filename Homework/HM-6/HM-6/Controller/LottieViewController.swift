//
//  LottieViewController.swift
//  HM-6
//
//  Created by Ruslan Liulka on 17.10.2024.
//

import UIKit
import Lottie
import SnapKit

class LottieViewController: UIViewController {
    
    var firstLotti: LottieAnimationView?
    var secondLottie: LottieAnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        firstLotti = .init(name: "sceleton")
        //        firstLotti?.contentMode = .scaleAspectFit
        //        firstLotti?.loopMode = .loop
        //        firstLotti?.backgroundColor = .black
        //        firstLotti?.play()
        //        view.addSubview(firstLotti!)
        //
        //        firstLotti?.snp.makeConstraints({ make in
        //            make.top.equalTo(view.snp.top)
        //            make.right.left.equalTo(view)
        //            make.height.equalTo(view.snp.height).multipliedBy(0.5)
        //        })
        
        secondLottie = LottieAnimationView()
        view.addSubview(secondLottie!)
        let url = Bundle.main.url(forResource: "gohst", withExtension: "lottie")!
        
        DotLottieFile.loadedFrom(url: url) { result in
            switch result {
            case .success(let success):
                self.secondLottie?.loadAnimation(from: success)
                self.secondLottie?.loopMode = .loop
                self.secondLottie?.play()
            case .failure(let failure):
                print(failure)
            }
        }
        
        secondLottie?.snp.makeConstraints({ make in
            make.bottom.equalTo(view.snp.bottom)
            make.right.left.equalTo(view)
            make.height.equalTo(view.snp.height).multipliedBy(0.5)
        })
        
        showDotLottie(name: "sceleton", myExtension: "lottie") { [weak self] animationView in
            guard let self = self, let animationView = animationView else { return }
            self.view.addSubview(animationView)
            animationView.backgroundColor = .black
            
            animationView.snp.makeConstraints({ make in
                make.top.equalTo(self.view.snp.top)
                make.right.left.equalTo(self.view)
                make.height.equalTo(self.view.snp.height).multipliedBy(0.5)
            })
        }
        
    }
    
    
    func showDotLottie(name: String, myExtension: String, completion: @escaping (LottieAnimationView?) -> Void) {
        
        let url = Bundle.main.url(forResource: name, withExtension: myExtension)!
        
        DotLottieFile.loadedFrom(url: url) { result in
            switch result {
            case .success(let success):
                let animationView = LottieAnimationView()
                animationView.loadAnimation(from: success)
                animationView.loopMode = .loop
                animationView.play()
                completion(animationView)
            case .failure(let failure):
                print(failure)
                completion(nil)
            }
        }
    }
    
}
