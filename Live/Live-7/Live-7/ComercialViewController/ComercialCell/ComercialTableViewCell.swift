//
//  ComercialComercialTableViewCell.swift
//  Live-7
//
//  Created by Ruslan Liulka on 28.10.2024.
//

import UIKit

class ComercialTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(with person: Person) {
        
        avatarImageView.downloaded(from: person.avatarImage)
        nameLabel.text = person.firstName
        secondLabel.text = person.job.company
        thirdLabel.text = person.location.city
        descriptionLabel.text = person.differentSizeDescription
        
    }


}
