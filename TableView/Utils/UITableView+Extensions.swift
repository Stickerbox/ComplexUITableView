//
//  UITableView+Extensions.swift
//  TableView
//
//  Created by Jordan.Dixon on 20/11/2017.
//  Copyright © 2017 Jordan.Dixon. All rights reserved.
//

import UIKit

extension UITableView {
    func cell<T: UITableViewCell>(for cellType: T.Type, at indexPath: IndexPath) -> T {
        
        guard let cell = self.dequeueReusableCell(withIdentifier: String(describing: cellType), for: indexPath) as? T else {
            fatalError("Could not find cell with reuseID \(String(describing: cellType))")
        }
        
        return cell
    }
    
    func register<T: UITableViewCell>(_ nibs: [T.Type]) {
        nibs.forEach {
            self.register(UINib(nibName: String(describing: $0), bundle: nil), forCellReuseIdentifier: String(describing: $0))
        }
    }
}
