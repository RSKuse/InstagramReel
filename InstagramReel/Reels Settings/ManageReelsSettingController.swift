//
//  ManageReelsSettingController.swift
//  InstagramReel
//
//  Created by Reuben Simphiwe Kuse on 2024/02/13.
//

import Foundation
import UIKit

class ManageReelsSettingController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    lazy var reelsSettingsTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.allowsSelection = true
        tableView.separatorColor = UIColor(red: 0.808, green: 0.835, blue: 0.863, alpha: 1)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        handleRegisterCell()
    }
    
    func setupUI() {
        view.addSubview(reelsSettingsTableView)
       
        reelsSettingsTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        reelsSettingsTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        reelsSettingsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        reelsSettingsTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true

    }
    
    func handleRegisterCell() {
        reelsSettingsTableView.register(ManageReelsTableViewCell.self, forCellReuseIdentifier: "ManageReelsTableViewCellID")
    }
}

