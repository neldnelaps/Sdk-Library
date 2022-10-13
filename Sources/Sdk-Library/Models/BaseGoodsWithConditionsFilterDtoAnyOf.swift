//
// BaseGoodsWithConditionsFilterDtoAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BaseGoodsWithConditionsFilterDtoAnyOf: Codable, JSONEncodable, Hashable {

    public var type: ChequeGoodsFilterType?
    public var _operator: ComparisonOperator?
    /** Первое значение для операции. */
    public var firstValue: Double?
    /** Второе значение для операции. */
    public var secondValue: Double?

    public init(type: ChequeGoodsFilterType? = nil, _operator: ComparisonOperator? = nil, firstValue: Double? = nil, secondValue: Double? = nil) {
        self.type = type
        self._operator = _operator
        self.firstValue = firstValue
        self.secondValue = secondValue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case _operator = "operator"
        case firstValue
        case secondValue
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(_operator, forKey: ._operator)
        try container.encodeIfPresent(firstValue, forKey: .firstValue)
        try container.encodeIfPresent(secondValue, forKey: .secondValue)
    }
}

