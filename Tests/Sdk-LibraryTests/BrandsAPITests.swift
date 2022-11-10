//
//  BrandsAPITests.swift
//  
//
//  Created by Nelaps on 10.11.2022.
//

import Foundation
import XCTest
@testable import Sdk_Library

final class BrandsAPITests: XCTestCase {
    
    let testTimeout = 10.0
    
    override func setUp() {
        super.setUp()
        
        OpenAPIClientAPI.basePath = "https://example.loymax.tech/publicapi"
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testBrandsGetBrands() {
        let expectation = self.expectation(description: "testBrandsGetBrands")
        
        BrandsAPI.brandsGetBrands(){ (brands, error) in
            guard error == nil else {
                XCTFail("error retrieving offers")
                return
            }
            
            if let brands = brands?.data {
                XCTAssert(brands.count == 5, "invalid count")
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testBrandsGetBrandInfoById () {
        let expectation = self.expectation(description: "testBrandsGetBrandInfoById")
        
        BrandsAPI.brandsGetBrandInfoById(id: 27){ (brands, error) in
            guard error == nil else {
                XCTFail("error retrieving offers")
                return
            }
            
            if let brands = brands?.data {
                XCTAssert(brands.id == 27, "invalid id")
                XCTAssert(brands.order == 1, "invalid order")
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    //
    
    func testBrandsGetBrandInfo () {
        let expectation = self.expectation(description: "testBrandsGetBrandInfoById")
        
        BrandsAPI.brandsGetBrandInfo(uid: "bf628327-5f31-4ae9-a01b-766e085098e0"){ (brands, error) in
            guard error == nil else {
                XCTFail("error retrieving offers")
                return
            }
            
            if let brands = brands?.data {
                XCTAssert(brands.state == BrandModelState.normal, "invalid state")
                XCTAssert(brands.order == 0, "invalid order")
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
