//
// CardTypeFilterViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CardTypeFilterViewModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Список идентификаторов выбранных категорий карт. */
    public var cardTypes: [CardType]?

    public init(cardTypes: [CardType]? = nil) {
        self.cardTypes = cardTypes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cardTypes
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(cardTypes, forKey: .cardTypes)
    }
}

