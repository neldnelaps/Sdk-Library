//
// MultiplicationCashbackActionDtoAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MultiplicationCashbackActionDtoAnyOf: Codable, JSONEncodable, Hashable {

    /** Множитель. */
    public var multiplier: Double?

    public init(multiplier: Double? = nil) {
        self.multiplier = multiplier
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case multiplier
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(multiplier, forKey: .multiplier)
    }
}

