//
//  PublicClass1.swift
//  Module1
//
//  Created by Nguyen Duc Hoang on 9/17/17.
//  Copyright © 2017 Nguyen Duc Hoang. All rights reserved.
//

import Foundation
public class PublicClass1 {
    func abc() {
        //Internal class can be accessed within Module
        let internalClass1 = InternalClass1()
    }
    public func publicMethod() {
        
    }
    internal func internalMethod() {
        
    }
    private func privateMethod() {
        
    }
    fileprivate func fileprivateMethod() {
        
    }
}

internal class PublicSubClass1:PublicClass1 {
    override internal func publicMethod() {
        super.publicMethod()
    }
    override internal func internalMethod() {
        super.internalMethod()
    }
    override internal func fileprivateMethod() {
        super.fileprivateMethod()
    }
}
