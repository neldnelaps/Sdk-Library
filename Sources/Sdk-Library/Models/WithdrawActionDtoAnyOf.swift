//
// WithdrawActionDtoAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct WithdrawActionDtoAnyOf: Codable, JSONEncodable, Hashable {

    /** Сумма изъятия. */
    public var amount: String?
    /** Код Юридического лица. */
    public var legalCode: String?
    /** Логическое имя дебетовой кассы. */
    public var deviceCode: String?
    /** Для совместимости, использовать DeviceCode: Код валюты. */
    public var deviceId: String?
    /** Uid валюты. */
    public var currencyUid: String?
    /** Для совместимости, использовать CurrencyUid: Uid валюты. */
    public var currencyExternalId: String?

    public init(amount: String? = nil, legalCode: String? = nil, deviceCode: String? = nil, deviceId: String? = nil, currencyUid: String? = nil, currencyExternalId: String? = nil) {
        self.amount = amount
        self.legalCode = legalCode
        self.deviceCode = deviceCode
        self.deviceId = deviceId
        self.currencyUid = currencyUid
        self.currencyExternalId = currencyExternalId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
        case legalCode
        case deviceCode
        case deviceId
        case currencyUid
        case currencyExternalId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(legalCode, forKey: .legalCode)
        try container.encodeIfPresent(deviceCode, forKey: .deviceCode)
        try container.encodeIfPresent(deviceId, forKey: .deviceId)
        try container.encodeIfPresent(currencyUid, forKey: .currencyUid)
        try container.encodeIfPresent(currencyExternalId, forKey: .currencyExternalId)
    }
}

