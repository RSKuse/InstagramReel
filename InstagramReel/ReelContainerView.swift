//
//  ReelContainerView.swift
//  InstagramReel
//
//  Created by Reuben Simphiwe Kuse on 2024/02/10.
//

import Foundation
import UIKit

class ReelContainerView: UIView {
    
    lazy var likeButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "like_icon")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        }()
        
    lazy var likeLabel: UILabel = {
        let label = UILabel()
        label.text = "100 k"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        }()
    
    lazy var likedStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [likeButton, likeLabel])
        stackView.alignment = .center
        stackView.distribution = .equalCentering
        stackView.axis = .vertical
        stackView.spacing = 2
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        addSubview(likedStackView)
        
        likedStackView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        likedStackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        likedStackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        likedStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).isActive = true
        
        likeButton.heightAnchor.constraint(equalToConstant: 28).isActive = true
        likeButton.widthAnchor.constraint(equalToConstant: 28).isActive = true
    }
}
