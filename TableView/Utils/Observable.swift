//
//  Observable.swift
//  TableView
//
//  Created by Jordan.Dixon on 21/11/2017.
//  Copyright © 2017 Jordan.Dixon. All rights reserved.
//

import Foundation

class Observable<T> {
    
    typealias Observer = ((T) -> Void)?
    typealias Reactor = (() -> Void)?
    
    var observer: Observer
    var reactor: Reactor
    
    func observe(_ observer: Observer) {
        self.observer = observer
        observer?(value)
    }
    
    func observe(_ reactor: Reactor) {
        self.reactor = reactor
        reactor?()
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    var value: T {
        didSet {
            observer?(value)
            reactor?()
        }
    }
    
}
