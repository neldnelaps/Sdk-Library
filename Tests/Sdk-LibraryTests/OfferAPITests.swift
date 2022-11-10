//
//  OfferAPITests.swift
//  
//
//  Created by Nelaps on 10.11.2022.
//

import Foundation
import XCTest
@testable import Sdk_Library

final class OfferAPITests: XCTestCase {

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

    func testOfferGetOffers() {
        let expectation = self.expectation(description: "testOfferGetOffers")

        OfferAPI.offerGetOffers(){ (offers, error) in
            guard error == nil else {
                XCTFail("error retrieving offers")
                return
            }

            if let offers = offers?.data {
                XCTAssert(offers.count == 5, "invalid count")
                expectation.fulfill()
            }
        }

        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testOfferGetOffer() {
        let expectation = self.expectation(description: "testOfferGetOffer")

        OfferAPI.offerGetOffer(id: 3622){ (offer, error) in
            guard error == nil else {
                XCTFail("error retrieving offer")
                return
            }

            if let offer = offer?.data {
                XCTAssert(offer.id == 3622, "invalid id")
                XCTAssert(offer.title == "Полезный летний завтрак", "invalid title")
                XCTAssert(offer.merchantsCount == 5, "invalid merchantsCount")
                expectation.fulfill()
            }
        }

        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
