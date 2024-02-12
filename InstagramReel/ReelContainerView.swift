//
//  ReelContainerView.swift
//  InstagramReel
//
//  Created by Reuben Simphiwe Kuse on 2024/02/10.
//

import Foundation
import UIKit

class ReelContainerView: UIView {
    
    lazy var mellowImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "profile_image")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        addSubview(mellowImageView)
        
        mellowImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        mellowImageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        mellowImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        mellowImageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}
