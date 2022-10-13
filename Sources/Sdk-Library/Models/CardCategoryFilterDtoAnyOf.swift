//
// CardCategoryFilterDtoAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CardCategoryFilterDtoAnyOf: Codable, JSONEncodable, Hashable {

    /** Список идентификаторов выбранных категорий карт. */
    public var cardCategoryIds: [Int]?

    public init(cardCategoryIds: [Int]? = nil) {
        self.cardCategoryIds = cardCategoryIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cardCategoryIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(cardCategoryIds, forKey: .cardCategoryIds)
    }
}
