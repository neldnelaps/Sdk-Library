//
// BalanceResultModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BalanceResultModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Количество средств на счете держателя карты. */
    public var amount: Double?
    /** Сокращенное название валюты. */
    public var currency: String?
    /** Комментарий к счету. */
    public var description: String?

    public init(amount: Double? = nil, currency: String? = nil, description: String? = nil) {
        self.amount = amount
        self.currency = currency
        self.description = description
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
        case currency
        case description
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(description, forKey: .description)
    }
}
