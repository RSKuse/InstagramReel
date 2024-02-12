//
//  ViewController.swift
//  InstagramReel
//
//  Created by Reuben Simphiwe Kuse on 2024/02/10.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var reelView: ReelContainerView = {
        let view = ReelContainerView()
        view.mellowImageView.image = UIImage(named: "profile_image")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
    
    lazy var volumeButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "volume_icon")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
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
        label.font = UIFont.systemFont(ofSize: 13, weight: UIFont.Weight.bold)
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
    
    lazy var commentButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "comment_icon-2")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        }()
        
    lazy var commentsLabel: UILabel = {
        let label = UILabel()
        label.text = "3 867"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 13, weight: UIFont.Weight.bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        }()
    
    
    lazy var commentStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [commentButton, commentsLabel])
        stackView.alignment = .center
        stackView.distribution = .equalCentering
        stackView.axis = .vertical
        stackView.spacing = 2
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var shareButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "paper_plane_outline_icon")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        }()
        
    lazy var shareLabel: UILabel = {
        let label = UILabel()
        label.text = "158 k"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        }()
    
    
    lazy var shareStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [shareButton, shareLabel])
        stackView.alignment = .center
        stackView.distribution = .equalCentering
        stackView.axis = .vertical
        stackView.spacing = 2
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var moreButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "dots_icon")
        button.setImage(icon, for: .normal)
        button.tintColor = .white
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "emperor_Kwesta")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 8
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [likedStackView, commentStackView, shareStackView, moreButton, profileImageView])
        stackView.axis = .vertical
        stackView.alignment = .trailing
        stackView.spacing = 12
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
        
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        view.addSubview(reelView)
        view.addSubview(likedStackView)
        view.addSubview(commentStackView)
        view.addSubview(shareStackView)
        view.addSubview(moreButton)
        view.addSubview(profileImageView)
        view.addSubview(stackView)
        
                
        reelView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        reelView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        reelView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        reelView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
                

        likedStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        
        commentStackView.topAnchor.constraint(equalTo: likedStackView.bottomAnchor, constant: 16).isActive = true
        commentStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        
        shareStackView.topAnchor.constraint(equalTo: commentStackView.bottomAnchor, constant: 16).isActive = true
        shareStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        
        moreButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        moreButton.topAnchor.constraint(equalTo: shareStackView.bottomAnchor, constant: 16).isActive = true
        moreButton.heightAnchor.constraint(equalToConstant: 28).isActive = true
        moreButton.widthAnchor.constraint(equalToConstant: 28).isActive = true
        
        profileImageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16).isActive = true
        profileImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 32).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        likeButton.heightAnchor.constraint(equalToConstant: 28).isActive = true
        likeButton.widthAnchor.constraint(equalToConstant: 28).isActive = true
        
        commentButton.heightAnchor.constraint(equalToConstant: 28).isActive = true
        commentButton.widthAnchor.constraint(equalToConstant: 28).isActive = true
        
        shareButton.heightAnchor.constraint(equalToConstant: 28).isActive = true
        shareButton.widthAnchor.constraint(equalToConstant: 28).isActive = true
        
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16).isActive = true
        stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        
    }
    
    func setupNavigationBar() {
        
        let cameraButton = UIBarButtonItem(customView: cameraClickButton)
        let volumeBarButton = UIBarButtonItem(customView: volumeButton)
        cameraClickButton.widthAnchor.constraint(equalToConstant: 28).isActive = true
        cameraClickButton.heightAnchor.constraint(equalToConstant: 28).isActive = true
        
        volumeButton.widthAnchor.constraint(equalToConstant: 28).isActive = true
        volumeButton.heightAnchor.constraint(equalToConstant: 28).isActive = true
        
        navigationItem.rightBarButtonItems = [cameraButton, volumeBarButton]
  
        
    }


}

