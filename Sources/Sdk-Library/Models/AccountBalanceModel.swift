//
// AccountBalanceModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Информация о балансе счета. */
public struct AccountBalanceModel: Codable, JSONEncodable, Hashable {

    public var currency: CurrencyInfoModel?
    /** Баланс счета клиента. */
    public var balance: Double?
    /** Неактивированные бонусы. */
    public var notActivated: Double?
    /** Бонусов получено. */
    public var accumulated: Double?
    /** Бонусов потрачено. */
    public var paid: Double?

    public init(currency: CurrencyInfoModel? = nil, balance: Double? = nil, notActivated: Double? = nil, accumulated: Double? = nil, paid: Double? = nil) {
        self.currency = currency
        self.balance = balance
        self.notActivated = notActivated
        self.accumulated = accumulated
        self.paid = paid
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case currency
        case balance
        case notActivated
        case accumulated
        case paid
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(balance, forKey: .balance)
        try container.encodeIfPresent(notActivated, forKey: .notActivated)
        try container.encodeIfPresent(accumulated, forKey: .accumulated)
        try container.encodeIfPresent(paid, forKey: .paid)
    }
}
