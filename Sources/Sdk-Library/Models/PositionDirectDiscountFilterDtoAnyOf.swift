//
// PositionDirectDiscountFilterDtoAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PositionDirectDiscountFilterDtoAnyOf: Codable, JSONEncodable, Hashable {

    public var offer: OfferLinkDto?

    public init(offer: OfferLinkDto? = nil) {
        self.offer = offer
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case offer
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(offer, forKey: .offer)
    }
}

