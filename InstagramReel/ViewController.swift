//
//  ViewController.swift
//  InstagramReel
//
//  Created by Reuben Simphiwe Kuse on 2024/02/10.
//

import UIKit

class ViewController: UIViewController {
    
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
    
    lazy var volumeButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "volume_icon")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var likedStackView: ReelContainerView = {
        let view = ReelContainerView()
        view.likeLabel.text = "100"
        //view.likeLabel.isHidden = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var commentStackView: ReelContainerView = {
        let view = ReelContainerView()
        view.likeLabel.text = "178"
        let icon = UIImage(named: "comment_icon-2")
        view.likeButton.setImage(icon, for: UIControl.State.normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(commentButtonTapped)))
        //view.likeButton.addTarget(self, action: #selector(commentButtonTapped), for: .touchUpInside)
        return view
    }()
    
    lazy var shareStackView: ReelContainerView = {
        let view = ReelContainerView()
        view.likeLabel.text = "178"
        let icon = UIImage(named: "paper_plane_outline_icon")
        view.likeButton.setImage(icon, for: UIControl.State.normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(commentButtonTapped)))
        //view.likeButton.addTarget(self, action: #selector(commentButtonTapped), for: .touchUpInside)
        return view
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
        imageView.layer.cornerRadius = 7
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
        view.addSubview(mellowImageView)
        view.addSubview(likedStackView)
        view.addSubview(commentStackView)
        view.addSubview(shareStackView)
        view.addSubview(moreButton)
        view.addSubview(profileImageView)
        view.addSubview(stackView)
        moreButton.addTarget(self, action: #selector(moreButtonTapped), for: .touchUpInside)
        
        
        mellowImageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        mellowImageView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        mellowImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mellowImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
        likedStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
        
        commentStackView.topAnchor.constraint(equalTo: likedStackView.bottomAnchor, constant: 16).isActive = true
        commentStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
        
        shareStackView.topAnchor.constraint(equalTo: commentStackView.bottomAnchor, constant: 16).isActive = true
        shareStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
        
        moreButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -14).isActive = true
        moreButton.topAnchor.constraint(equalTo: shareStackView.bottomAnchor, constant: 16).isActive = true
        moreButton.heightAnchor.constraint(equalToConstant: 28).isActive = true
        moreButton.widthAnchor.constraint(equalToConstant: 28).isActive = true
        
        profileImageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16).isActive = true
        profileImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -14).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 28).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 28).isActive = true
        
        
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16).isActive = true
        stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -14).isActive = true
        
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
    
    @objc func commentButtonTapped() {
        print("comment button tapped")
        
    }
    @objc func moreButtonTapped() {
        let manageReelsSettingController = ManageReelsSettingController()
        // Present the ManageReelsSettingController
        present(manageReelsSettingController, animated: true, completion: nil)
    }
}

