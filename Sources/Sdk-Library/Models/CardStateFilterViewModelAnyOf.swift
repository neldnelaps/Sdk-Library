//
// CardStateFilterViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CardStateFilterViewModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Выбранные выпуски. */
    public var cardStates: [CardState]?

    public init(cardStates: [CardState]? = nil) {
        self.cardStates = cardStates
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cardStates
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(cardStates, forKey: .cardStates)
    }
}

