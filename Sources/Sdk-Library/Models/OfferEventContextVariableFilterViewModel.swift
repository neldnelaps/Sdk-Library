//
// OfferEventContextVariableFilterViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** ViewModel для фильтра \&quot;Значение переменной\&quot;. */
public struct OfferEventContextVariableFilterViewModel: Codable, JSONEncodable, Hashable {

    public var id: Int?
    public var name: String?
    public var isDeletedFilterType: Bool?
    public var processParameters: String?
    public var operation: FilterOperation?
    /** Первое значение. */
    public var firstValue: Double?
    /** Второе значение. */
    public var secondValue: Double?
    public var variable: OfferEventContextVariableViewModel?

    public init(id: Int? = nil, name: String? = nil, isDeletedFilterType: Bool? = nil, processParameters: String? = nil, operation: FilterOperation? = nil, firstValue: Double? = nil, secondValue: Double? = nil, variable: OfferEventContextVariableViewModel? = nil) {
        self.id = id
        self.name = name
        self.isDeletedFilterType = isDeletedFilterType
        self.processParameters = processParameters
        self.operation = operation
        self.firstValue = firstValue
        self.secondValue = secondValue
        self.variable = variable
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case isDeletedFilterType
        case processParameters
        case operation
        case firstValue
        case secondValue
        case variable
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(isDeletedFilterType, forKey: .isDeletedFilterType)
        try container.encodeIfPresent(processParameters, forKey: .processParameters)
        try container.encodeIfPresent(operation, forKey: .operation)
        try container.encodeIfPresent(firstValue, forKey: .firstValue)
        try container.encodeIfPresent(secondValue, forKey: .secondValue)
        try container.encodeIfPresent(variable, forKey: .variable)
    }
}

