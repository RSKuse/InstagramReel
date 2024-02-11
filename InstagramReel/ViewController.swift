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

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(reelView)

        reelView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        reelView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        reelView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        reelView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
    }


}

