//
// DoubleValueModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DoubleValueModelAnyOf: Codable, JSONEncodable, Hashable {

    /** DoubleValue. */
    public var doubleValue: Double?

    public init(doubleValue: Double? = nil) {
        self.doubleValue = doubleValue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case doubleValue
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(doubleValue, forKey: .doubleValue)
    }
}

