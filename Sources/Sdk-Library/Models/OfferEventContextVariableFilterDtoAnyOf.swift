//
// OfferEventContextVariableFilterDtoAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OfferEventContextVariableFilterDtoAnyOf: Codable, JSONEncodable, Hashable {

    public var _operator: ComparisonOperator?
    /** Первое значение. */
    public var firstValue: Double?
    /** Второе значение. */
    public var secondValue: Double?
    public var variable: OfferEventContextVariable?

    public init(_operator: ComparisonOperator? = nil, firstValue: Double? = nil, secondValue: Double? = nil, variable: OfferEventContextVariable? = nil) {
        self._operator = _operator
        self.firstValue = firstValue
        self.secondValue = secondValue
        self.variable = variable
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _operator = "operator"
        case firstValue
        case secondValue
        case variable
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_operator, forKey: ._operator)
        try container.encodeIfPresent(firstValue, forKey: .firstValue)
        try container.encodeIfPresent(secondValue, forKey: .secondValue)
        try container.encodeIfPresent(variable, forKey: .variable)
    }
}

