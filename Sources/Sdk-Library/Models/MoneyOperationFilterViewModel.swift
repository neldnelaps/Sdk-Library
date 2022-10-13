//
// MoneyOperationFilterViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** View модель для фильтров со сравнением в денежных единицах. */
public struct MoneyOperationFilterViewModel: Codable, JSONEncodable, Hashable {

    public var operation: FilterOperation?
    /** Первое значение. */
    public var firstValue: Double?
    /** Второе значение. */
    public var secondValue: Double?
    public var id: Int?
    public var name: String?
    public var isDeletedFilterType: Bool?
    public var processParameters: String?

    public init(operation: FilterOperation? = nil, firstValue: Double? = nil, secondValue: Double? = nil, id: Int? = nil, name: String? = nil, isDeletedFilterType: Bool? = nil, processParameters: String? = nil) {
        self.operation = operation
        self.firstValue = firstValue
        self.secondValue = secondValue
        self.id = id
        self.name = name
        self.isDeletedFilterType = isDeletedFilterType
        self.processParameters = processParameters
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case operation
        case firstValue
        case secondValue
        case id
        case name
        case isDeletedFilterType
        case processParameters
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(operation, forKey: .operation)
        try container.encodeIfPresent(firstValue, forKey: .firstValue)
        try container.encodeIfPresent(secondValue, forKey: .secondValue)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(isDeletedFilterType, forKey: .isDeletedFilterType)
        try container.encodeIfPresent(processParameters, forKey: .processParameters)
    }
}

