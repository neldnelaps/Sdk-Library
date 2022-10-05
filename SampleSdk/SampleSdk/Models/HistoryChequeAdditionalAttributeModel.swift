//
// HistoryChequeAdditionalAttributeModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Атрибут чека. */
public struct HistoryChequeAdditionalAttributeModel: Codable, JSONEncodable, Hashable {

    public var type: HistoryChequeAdditionalAttributeType?
    /** Имя атрибута. */
    public var name: String?
    /** Строковое значение атрибута. */
    public var stringValue: String?
    /** Decimal значение атрибута. */
    public var decimalValue: Double?
    /** Значение в строковом выражении. */
    public var value: String?

    public init(type: HistoryChequeAdditionalAttributeType? = nil, name: String? = nil, stringValue: String? = nil, decimalValue: Double? = nil, value: String? = nil) {
        self.type = type
        self.name = name
        self.stringValue = stringValue
        self.decimalValue = decimalValue
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case name
        case stringValue
        case decimalValue
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(stringValue, forKey: .stringValue)
        try container.encodeIfPresent(decimalValue, forKey: .decimalValue)
        try container.encodeIfPresent(value, forKey: .value)
    }
}
