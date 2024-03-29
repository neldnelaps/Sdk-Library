//
// MeatryadStatusViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Подробная модель статуса пользователя. */
public struct MeatryadStatusViewModel: Codable, JSONEncodable, Hashable {

    /** Статусы. */
    public var statuses: [StatusItemViewModel]?
    public var bonusCurrency: CurrencyInfoModel?
    /** Текущий баланс. */
    public var balance: Double?

    public init(statuses: [StatusItemViewModel]? = nil, bonusCurrency: CurrencyInfoModel? = nil, balance: Double? = nil) {
        self.statuses = statuses
        self.bonusCurrency = bonusCurrency
        self.balance = balance
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case statuses
        case bonusCurrency
        case balance
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(statuses, forKey: .statuses)
        try container.encodeIfPresent(bonusCurrency, forKey: .bonusCurrency)
        try container.encodeIfPresent(balance, forKey: .balance)
    }
}

