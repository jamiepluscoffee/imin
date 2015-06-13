//
//  ActivityTableViewCell.swift
//  imin
//
//  Created by Alexey Blinov on 13/06/2015.
//  Copyright (c) 2015 Jamie Hughes. All rights reserved.
//

import UIKit

class ActivityTableViewCell: UITableViewCell
{
    @IBOutlet weak var activityNameLabel: UILabel!
    @IBOutlet weak var hostNameLabel: UILabel!
    @IBOutlet weak var placeNameLabel: UILabel!
    @IBOutlet weak var activityAttendanceSwitch: UISwitch!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }
    
    var activity: Activity? = nil
    {
        didSet
        {
            if let value = activity {
                self.activityNameLabel.text = value.name
                self.hostNameLabel.text = value.host.name
                self.placeNameLabel.text = value.location.name
                
                self.activityAttendanceSwitch.on = value.isUserAttending(UserSession.currentSession.currentUser)
            }
        }
    }

    override func setSelected(selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
