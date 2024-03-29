//
// AccountChangeViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель изменения бонусного счета. */
public struct AccountChangeViewModel: Codable, JSONEncodable, Hashable {

    /** Сумма со знаком. */
    public var amount: Double?
    /** Дата. */
    public var date: Date?

    public init(amount: Double? = nil, date: Date? = nil) {
        self.amount = amount
        self.date = date
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
        case date
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(date, forKey: .date)
    }
}

