//
//  ViewController.swift
//  TableView
//
//  Created by Jordan.Dixon on 20/11/2017.
//  Copyright © 2017 Jordan.Dixon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let viewModel = ViewControllerViewModel()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register([FirstCell.self, SecondCell.self])
        viewModel.dataSource.observe { [weak self] in self?.tableView.reloadData() }
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellData = viewModel.dataSource.value[indexPath.section].cells[indexPath.row]
        
        switch cellData {
            
        case .first(let firstItem):
            let cell = tableView.cell(for: FirstCell.self, at: indexPath)
            cell.populate(with: firstItem)
            return cell
            
        case .second(let secondItem):
            let cell = tableView.cell(for: SecondCell.self, at: indexPath)
            cell.populate(with: secondItem)
            return cell
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.dataSource.value.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.dataSource.value[section].cells.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return viewModel.dataSource.value[section].title
    }
    
}
