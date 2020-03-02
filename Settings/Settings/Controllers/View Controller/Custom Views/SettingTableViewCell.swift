//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Garrett Lyons on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    // MARK: - Outlets
    
    @IBOutlet weak var settingIconImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UIStackView!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    // MARK: - Actions
    @IBAction func settingSwitchToggled(_ sender: Any) {
    
    }
    
}
