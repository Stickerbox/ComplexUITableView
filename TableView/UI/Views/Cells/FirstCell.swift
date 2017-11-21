//
//  FirstCell.swift
//  TableView
//
//  Created by Jordan.Dixon on 20/11/2017.
//  Copyright © 2017 Jordan.Dixon. All rights reserved.
//

import UIKit

class FirstCell: UITableViewCell {
    
    @IBOutlet var label: UILabel!
    
    func populate(with data: FirstItem) {
        label.text = data.title
    }
    
}
