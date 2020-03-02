//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Garrett Lyons on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

protocol SettingTableViewCellDelegate: class {
    //Step 1
    func settingSwitchTapped(for cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {

    // MARK: - Outlets
    
    @IBOutlet weak var settingIconImageView: UIImageView!
    @IBOutlet weak var settingSwitch: UISwitch!
    @IBOutlet weak var settingNameLabel: UILabel!

    // MARK: - Properties
    // Step 2
    weak var delegate: SettingTableViewCellDelegate?
    // MARK: - Actions
    @IBAction func settingSwitchToggled(_ sender: Any) {
        delegate?.settingSwitchTapped(for: self)
    }
    
    // MARK: - Helper Methods
    func updateViews(with setting: Setting) {
        settingIconImageView.image = setting.icon
        settingNameLabel.text = setting.settingTitle
        settingSwitch.isOn = setting.isOn
        
        backgroundColor = setting.isOn ? .brown : .white
//        if setting.isOn == true {
//            backgroundColor = .brown
//        } else {
//            backgroundColor = .white
//        }
        
        
    }
    
}
