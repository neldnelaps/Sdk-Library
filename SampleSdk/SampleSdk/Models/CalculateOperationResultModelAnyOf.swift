//
// CalculateOperationResultModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CalculateOperationResultModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Максимально возможный размер скидки, предоставляемый за оплату бонусами. */
    public var availableAmount: Double?
    /** Максимально возможное количество бонусов, которые можно списать за данную покупки. */
    public var availableBonusAmount: Double?
    /** Баланс. */
    public var balance: Double?
    /** Подарочные сертификаты. */
    public var giftCertificates: [GiftCertificate]?

    public init(availableAmount: Double? = nil, availableBonusAmount: Double? = nil, balance: Double? = nil, giftCertificates: [GiftCertificate]? = nil) {
        self.availableAmount = availableAmount
        self.availableBonusAmount = availableBonusAmount
        self.balance = balance
        self.giftCertificates = giftCertificates
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case availableAmount
        case availableBonusAmount
        case balance
        case giftCertificates
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(availableAmount, forKey: .availableAmount)
        try container.encodeIfPresent(availableBonusAmount, forKey: .availableBonusAmount)
        try container.encodeIfPresent(balance, forKey: .balance)
        try container.encodeIfPresent(giftCertificates, forKey: .giftCertificates)
    }
}

