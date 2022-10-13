//
// DeviceEmulationBalanceViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель баланса. */
public struct DeviceEmulationBalanceViewModel: Codable, JSONEncodable, Hashable {

    /** Сумма. */
    public var amount: Double?
    /** Валюта. */
    public var currency: String?
    public var resultStateModel: DeviceEmulationResultStateViewModel?

    public init(amount: Double? = nil, currency: String? = nil, resultStateModel: DeviceEmulationResultStateViewModel? = nil) {
        self.amount = amount
        self.currency = currency
        self.resultStateModel = resultStateModel
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
        case currency
        case resultStateModel
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(resultStateModel, forKey: .resultStateModel)
    }
}

