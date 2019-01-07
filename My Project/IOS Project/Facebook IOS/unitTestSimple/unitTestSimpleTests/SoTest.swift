//
//  SoTest.swift
//  unitTestSimpleTests
//
//  Created by An Nguyễn on 1/18/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import XCTest
@testable import unitTestSimple

class SoTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    let so = So()
    
    func testSum(){
//        let expected = 3
//        let actual = so.sum(a:1 , b:2)
//        XCTAssertEqual(expected,actual, "fail")
        
        for i in 0...100{
            let expected = i*2
            let actual = so.sum(a:i , b:i)
            XCTAssertEqual(expected,actual, "fail")
        }
        
    }
    
    
}
