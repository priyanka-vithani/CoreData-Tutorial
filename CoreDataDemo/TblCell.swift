//
//  TblCell.swift
//  CoreDataDemo
//
//  Created by Apple on 19/06/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class TblCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
