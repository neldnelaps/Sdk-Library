//
// CardCategoryInfoAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CardCategoryInfoAnyOf: Codable, JSONEncodable, Hashable {

    /** Пользовательское название. */
    public var description: String?
    /** Количество карт в категории. */
    public var cardCount: Int?

    public init(description: String? = nil, cardCount: Int? = nil) {
        self.description = description
        self.cardCount = cardCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case description
        case cardCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(cardCount, forKey: .cardCount)
    }
}

