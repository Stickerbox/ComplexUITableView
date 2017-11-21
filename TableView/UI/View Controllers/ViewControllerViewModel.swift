//
//  ViewControllerViewModel.swift
//  TableView
//
//  Created by Jordan.Dixon on 20/11/2017.
//  Copyright © 2017 Jordan.Dixon. All rights reserved.
//

import Foundation

class ViewControllerViewModel {
    
    var dataSource = Observable<[TableViewSection]>([TableViewSection]())

    init() {
        setupData()
    }
    
    private func setupData() {
        let firstItem = FirstItem(title: "Jordan Dixon")
        let firstItem2 = FirstItem(title: "Harry Bartlam")
        let dataItems: [SectionItem] = [.first(firstItem), .first(firstItem2)]
        let first = TableViewSection(title: "First", cells: dataItems)
        
        let secondItem = SecondItem(title: "Matt Collis")
        let secondItem2 = SecondItem(title: "Ray Britton")
        let secondItems: [SectionItem] = [.second(secondItem), .second(secondItem2)]
        let second = TableViewSection(title: "Second", cells: secondItems)
        
        dataSource.value = [first, second]
    }
    
}
