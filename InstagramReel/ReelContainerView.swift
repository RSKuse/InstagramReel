//
//  ReelContainerView.swift
//  InstagramReel
//
//  Created by Reuben Simphiwe Kuse on 2024/02/10#.
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
    
    lazy var cameraClickButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "camera_icon")
        button.setImage(icon, for: .normal)
        button.clipsToBounds = true
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var volumeBUtton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "volume_icon")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var cameraVolumebButtonStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [volumeBUtton, cameraClickButton])
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
        stackView.spacing = 2
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    
    

    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupNavigationBar()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        addSubview(mellowImageView)
        addSubview(cameraVolumebButtonStackView)
        
        mellowImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        mellowImageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        mellowImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        mellowImageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        cameraVolumebButtonStackView.leftAnchor.constraint(equalTo: rightAnchor, constant: 10).isActive = true
        cameraVolumebButtonStackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        
        
        func setupNavigationBar() {
            
            let volumeCameraButton = UIBarButtonItem(customView: cameraVolumebButtonStackView)
            cameraVolumebButtonStackView.widthAnchor.constraint(equalToConstant: 32).isActive = true
            cameraVolumebButtonStackView.heightAnchor.constraint(equalToConstant: 32).isActive = true
            navigationItem.rightBarButtonItem = volumeCameraButton
            
        }
        

        
    }
}
