//
//  ManageReelsTableViewCell.swift
//  InstagramReel
//
//  Created by Reuben Simphiwe Kuse on 2024/02/13.
//

import Foundation
import UIKit


class ManageReelsTableViewCell: UITableViewCell {
    
    lazy var imageIconView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "icon_home_selected")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 16
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        label.text = "Manage Captions"
        label.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        setupUI()
        backgroundColor = .lightGray

    }
    func setupUI() {
        contentView.addSubview(imageIconView)
        contentView.addSubview(nameLabel)

        imageIconView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        imageIconView.heightAnchor.constraint(equalToConstant: 32).isActive = true
        imageIconView.widthAnchor.constraint(equalToConstant: 32).isActive = true
        imageIconView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    
        nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: imageIconView.rightAnchor, constant: 10).isActive = true
        
    }
    required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
        
    }
    
    
}
