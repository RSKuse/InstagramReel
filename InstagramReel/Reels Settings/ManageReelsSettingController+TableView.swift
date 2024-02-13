//
//  ManageReelsSettingController+TableView.swift
//  InstagramReel
//
//  Created by Reuben Simphiwe Kuse on 2024/02/13.
//

import Foundation
import UIKit

extension ManageReelsSettingController {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reelsSettingsTableView = tableView.dequeueReusableCell(withIdentifier: "ManageReelsTableViewCellID", for: indexPath) as! ManageReelsTableViewCell
        return reelsSettingsTableView
    }
    
}
