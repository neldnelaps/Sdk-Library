//
// ProbabilityFilterDtoAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProbabilityFilterDtoAnyOf: Codable, JSONEncodable, Hashable {

    /** Вероятность (от 0 до 1). */
    public var probabilityValue: Double?

    public init(probabilityValue: Double? = nil) {
        self.probabilityValue = probabilityValue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case probabilityValue
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(probabilityValue, forKey: .probabilityValue)
    }
}

