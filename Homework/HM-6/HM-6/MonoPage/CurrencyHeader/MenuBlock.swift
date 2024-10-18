//
//  MenuBlock.swift
//  HM-6
//
//  Created by Ruslan Liulka on 18.10.2024.
//

import UIKit

class MenuBlock: BaseUI {
    
    @IBOutlet var allView: UIView!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var text: UILabel!
    
    func configure(with text: String, image: UIImage, color: UIColor) {
        self.allView.layer.cornerRadius = 20
        self.icon.layer.cornerRadius = self.icon.frame.width / 2 - 20
        self.icon.backgroundColor = color
        icon.image = image
        self.text.text = text
    }
}
