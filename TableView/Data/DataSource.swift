//
//  DataSource.swift
//  TableView
//
//  Created by Jordan.Dixon on 20/11/2017.
//  Copyright © 2017 Jordan.Dixon. All rights reserved.
//

import Foundation

// A section
struct TableViewSection {
    let title: String
    let cells: [SectionItem]
}

// A data source for a cell in a section
enum SectionItem {
    case first(FirstItem)
    case second(SecondItem)
}

// The actual data structures
struct FirstItem {
    let title: String
}

struct SecondItem {
    let title: String
}
