//
// CardCategoryFilterViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CardCategoryFilterViewModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Список выбранных категорий карт. */
    public var cardCategories: [CardCategoryModel]?

    public init(cardCategories: [CardCategoryModel]? = nil) {
        self.cardCategories = cardCategories
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cardCategories
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(cardCategories, forKey: .cardCategories)
    }
}

