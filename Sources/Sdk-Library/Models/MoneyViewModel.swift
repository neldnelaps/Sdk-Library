//
// MoneyViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** ViewModel представления денег. */
public struct MoneyViewModel: Codable, JSONEncodable, Hashable {

    /** Сумма. */
    public var amount: Double?
    /** Валюта. */
    public var currency: String?

    public init(amount: Double? = nil, currency: String? = nil) {
        self.amount = amount
        self.currency = currency
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
        case currency
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(currency, forKey: .currency)
    }
}
