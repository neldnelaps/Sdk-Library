//
// DateFilterDtoAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DateFilterDtoAnyOf: Codable, JSONEncodable, Hashable {

    public var _operator: ComparisonOperator?
    /** Первое значение (pure xml). */
    public var firstValueAsString: String?
    /** Второе значение (pure xml). */
    public var secondValueAsString: String?
    /** Первое значение. */
    public var firstValue: Date?
    /** Второе значение. */
    public var secondValue: Date?

    public init(_operator: ComparisonOperator? = nil, firstValueAsString: String? = nil, secondValueAsString: String? = nil, firstValue: Date? = nil, secondValue: Date? = nil) {
        self._operator = _operator
        self.firstValueAsString = firstValueAsString
        self.secondValueAsString = secondValueAsString
        self.firstValue = firstValue
        self.secondValue = secondValue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _operator = "operator"
        case firstValueAsString
        case secondValueAsString
        case firstValue
        case secondValue
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_operator, forKey: ._operator)
        try container.encodeIfPresent(firstValueAsString, forKey: .firstValueAsString)
        try container.encodeIfPresent(secondValueAsString, forKey: .secondValueAsString)
        try container.encodeIfPresent(firstValue, forKey: .firstValue)
        try container.encodeIfPresent(secondValue, forKey: .secondValue)
    }
}

