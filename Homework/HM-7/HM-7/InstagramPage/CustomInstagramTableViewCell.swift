//
//  CustomInstagramTableViewCell.swift
//  HM-7
//
//  Created by Ruslan Liulka on 01.11.2024.
//

import UIKit
import Lottie

class CustomInstagramTableViewCell: UITableViewCell {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nickNameLabel: UILabel!
    @IBOutlet weak var heartImageView: UIImageView!
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var saveImageView: UIImageView!
    @IBOutlet weak var countOfViewsLabel: UILabel!
    @IBOutlet weak var comentLabel: UILabel!
    @IBOutlet weak var postedAtLabel: UILabel!
    @IBOutlet weak var countOfComentsLabel: UILabel!
    
    private var isHeartFill = false
    private var lottieAnimationView: LottieAnimationView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(heartTapped))
        heartImageView.isUserInteractionEnabled = true
        heartImageView.addGestureRecognizer(tapGesture)
        
        lottieAnimationView = LottieAnimationView()
        let url = Bundle.main.url(forResource: "heart-lottie", withExtension: "lottie")!
        
        DotLottieFile.loadedFrom(url: url) { result in
            switch result {
            case .success(let success):
                self.lottieAnimationView?.loadAnimation(from: success)
            case .failure(let failure):
                print(failure)
            }
        }
        if let lottieAnimationView = lottieAnimationView {
            lottieAnimationView.frame = CGRect(x: 0, y: 0, width: 200, height: 200) //
            lottieAnimationView.center = postImageView.center // центр анімації у центрі ячейки
            lottieAnimationView.contentMode = .scaleAspectFill
            lottieAnimationView.isHidden = true // початково анімація прихована
            contentView.addSubview(lottieAnimationView)
        }
    }
    
    private func playLottieAnimation() {
        guard let lottieAnimationView else { return }
        lottieAnimationView.isHidden = false
        lottieAnimationView.play { [weak self] (finished) in
            if finished {
                lottieAnimationView.isHidden = true
            }
        }
    }
    
    func configure(with data: Post) {
        avatarImageView.image = UIImage(named: data.avatarImageName)
        postImageView.image = UIImage(named: data.postImageName)
        nickNameLabel.text = data.name
        countOfViewsLabel.text = "\(data.viewsCount)"
        
        let boldName = NSAttributedString(string: data.name, attributes: [.font: UIFont.boldSystemFont(ofSize: comentLabel.font.pointSize)])
        
        let description = NSAttributedString(string: " " + data.description, attributes: [.font: comentLabel.font])
        
        let combineText = NSMutableAttributedString()
        combineText.append(boldName)
        combineText.append(description)
        
        comentLabel.attributedText = combineText
        postedAtLabel.text = data.postedAt
        countOfComentsLabel.text = "\(data.countOfComents)" + " comments"
        
        avatarImageView.layer.cornerRadius = avatarImageView.bounds.width / 2
        
        heartImageView.image = UIImage(systemName: "heart")
        heartImageView.tintColor = .black
        
    }
    
    @objc private func heartTapped() {
        isHeartFill.toggle()
        
        if isHeartFill {
            heartImageView.image = UIImage(systemName: "heart.fill")
            heartImageView.tintColor = .red
            playLottieAnimation()
        } else {
            heartImageView.image = UIImage(systemName: "heart")
            heartImageView.tintColor = .black
        }
    }
    
    
}
