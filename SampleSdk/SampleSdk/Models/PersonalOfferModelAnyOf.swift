//
// PersonalOfferModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PersonalOfferModelAnyOf: Codable, JSONEncodable, Hashable {

    public var attribute: PersonalOfferAttributeModel?
    /** Можно ли выбирать товары. */
    public var canSelectGoods: Bool?

    public init(attribute: PersonalOfferAttributeModel? = nil, canSelectGoods: Bool? = nil) {
        self.attribute = attribute
        self.canSelectGoods = canSelectGoods
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case attribute
        case canSelectGoods
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(attribute, forKey: .attribute)
        try container.encodeIfPresent(canSelectGoods, forKey: .canSelectGoods)
    }
}

