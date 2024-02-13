//
//  ProfileViewController.swift
//  InstagramReel
//
//  Created by Reuben Simphiwe Kuse on 2024/02/12.
//

import UIKit

import Foundation
import UIKit

class ProfileViewController: UIViewController  {
    
    lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 75.0
        imageView.image = UIImage(named: "profile_image")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var titleNameLabel: UILabel = {
        let label = UILabel()
         label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
         label.textColor = UIColor.black
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
    }()
    
    lazy var quoteMessageLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.bold)
        label.textColor = UIColor.red
        label.textAlignment = .center
        label.numberOfLines = 6
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var iMessageLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.bold)
        label.textColor = UIColor.systemCyan
        label.text = "Strength does not come from winning"
        label.textAlignment = .center
        label.numberOfLines = 6
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        
    }
    
    func setupUI() {
        view.addSubview(profileImageView)
        view.addSubview(titleNameLabel)
        view.addSubview(quoteMessageLabel)
        view.addSubview(iMessageLabel)
        
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        titleNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleNameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 10).isActive = true
        
        quoteMessageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        quoteMessageLabel.topAnchor.constraint(equalTo: titleNameLabel.bottomAnchor, constant: 10).isActive = true
        quoteMessageLabel.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -20).isActive = true
        
        iMessageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        iMessageLabel.topAnchor.constraint(equalTo: quoteMessageLabel.bottomAnchor, constant: 10).isActive = true
        iMessageLabel.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -20).isActive = true
        
    }
    
}
