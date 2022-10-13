//
// DeviceEmulationPaymentViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель оплаты для тестовой кассы. */
public struct DeviceEmulationPaymentViewModel: Codable, JSONEncodable, Hashable {

    /** Логическое имя типа оплаты. */
    public var paymentType: String?
    /** Название типа оплаты. */
    public var paymentName: String?
    /** Сумма. */
    public var amount: Double?
    /** Информация. */
    public var info: String?
    public var identifier: DeviceEmulationIdentifierViewModel?

    public init(paymentType: String? = nil, paymentName: String? = nil, amount: Double? = nil, info: String? = nil, identifier: DeviceEmulationIdentifierViewModel? = nil) {
        self.paymentType = paymentType
        self.paymentName = paymentName
        self.amount = amount
        self.info = info
        self.identifier = identifier
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case paymentType
        case paymentName
        case amount
        case info
        case identifier
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(paymentType, forKey: .paymentType)
        try container.encodeIfPresent(paymentName, forKey: .paymentName)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(info, forKey: .info)
        try container.encodeIfPresent(identifier, forKey: .identifier)
    }
}

