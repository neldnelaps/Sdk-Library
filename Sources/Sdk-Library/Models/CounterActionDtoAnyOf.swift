//
// CounterActionDtoAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CounterActionDtoAnyOf: Codable, JSONEncodable, Hashable {

    /** Значение шага счетчика. */
    public var increment: Double?
    public var incrementVariable: OfferEventContextVariable?
    /** Признак, что переменная будет увеличивать значение счетчика. */
    public var isAdding: Bool?
    public var operation: CounterOperationType?
    public var incrementType: IncrementType?
    /** Счетчик. */
    public var counter: AnyCodable?

    public init(increment: Double? = nil, incrementVariable: OfferEventContextVariable? = nil, isAdding: Bool? = nil, operation: CounterOperationType? = nil, incrementType: IncrementType? = nil, counter: AnyCodable? = nil) {
        self.increment = increment
        self.incrementVariable = incrementVariable
        self.isAdding = isAdding
        self.operation = operation
        self.incrementType = incrementType
        self.counter = counter
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case increment
        case incrementVariable
        case isAdding
        case operation
        case incrementType
        case counter
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(increment, forKey: .increment)
        try container.encodeIfPresent(incrementVariable, forKey: .incrementVariable)
        try container.encodeIfPresent(isAdding, forKey: .isAdding)
        try container.encodeIfPresent(operation, forKey: .operation)
        try container.encodeIfPresent(incrementType, forKey: .incrementType)
        try container.encodeIfPresent(counter, forKey: .counter)
    }
}
