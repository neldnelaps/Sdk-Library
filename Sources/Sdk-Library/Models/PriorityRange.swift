//
// PriorityRange.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Диапазон значений приоритета у акций. */
public struct PriorityRange: Codable, JSONEncodable, Hashable {

    /** Нижняя граница приоритета акций. */
    public var lowerBound: Int?
    /** Верхняя граница приоритета акций. */
    public var upperBound: Int?

    public init(lowerBound: Int? = nil, upperBound: Int? = nil) {
        self.lowerBound = lowerBound
        self.upperBound = upperBound
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case lowerBound
        case upperBound
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(lowerBound, forKey: .lowerBound)
        try container.encodeIfPresent(upperBound, forKey: .upperBound)
    }
}
