//
// CalculatorFilterDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Фильтр \&quot;Фильтр по репозиторию\&quot;. */
public struct CalculatorFilterDto: Codable, JSONEncodable, Hashable {

    /** Имя фильтра. */
    public var name: String?
    /** Параметры обработки. */
    public var processParameters: String?
    public var _operator: ComparisonOperator?
    /** Первое значение. */
    public var firstValue: Double?
    /** Второе значение. */
    public var secondValue: Double?
    /** Id калькулятора. */
    public var calculatorId: Int?

    public init(name: String? = nil, processParameters: String? = nil, _operator: ComparisonOperator? = nil, firstValue: Double? = nil, secondValue: Double? = nil, calculatorId: Int? = nil) {
        self.name = name
        self.processParameters = processParameters
        self._operator = _operator
        self.firstValue = firstValue
        self.secondValue = secondValue
        self.calculatorId = calculatorId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case processParameters
        case _operator = "operator"
        case firstValue
        case secondValue
        case calculatorId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(processParameters, forKey: .processParameters)
        try container.encodeIfPresent(_operator, forKey: ._operator)
        try container.encodeIfPresent(firstValue, forKey: .firstValue)
        try container.encodeIfPresent(secondValue, forKey: .secondValue)
        try container.encodeIfPresent(calculatorId, forKey: .calculatorId)
    }
}

