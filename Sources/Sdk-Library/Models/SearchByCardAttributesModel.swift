//
// SearchByCardAttributesModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SearchByCardAttributesModel: Codable, JSONEncodable, Hashable {

    public var cardState: CardState?
    public var isGift: Bool?
    public var isBlocked: Bool?

    public init(cardState: CardState? = nil, isGift: Bool? = nil, isBlocked: Bool? = nil) {
        self.cardState = cardState
        self.isGift = isGift
        self.isBlocked = isBlocked
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cardState
        case isGift
        case isBlocked
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(cardState, forKey: .cardState)
        try container.encodeIfPresent(isGift, forKey: .isGift)
        try container.encodeIfPresent(isBlocked, forKey: .isBlocked)
    }
}

