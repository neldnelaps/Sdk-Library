//
// PaymentOperationResultModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PaymentOperationResultModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Сумма скидки, которую нужно предоставить (в валюте кассы). */
    public var amount: Double?
    /** Сумма списанных бонусов. */
    public var bonusAmount: Double?
    /** Список подарочных сертификатов в чеке. */
    public var giftCertificates: [GiftCertificateModel]?

    public init(amount: Double? = nil, bonusAmount: Double? = nil, giftCertificates: [GiftCertificateModel]? = nil) {
        self.amount = amount
        self.bonusAmount = bonusAmount
        self.giftCertificates = giftCertificates
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
        case bonusAmount
        case giftCertificates
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(bonusAmount, forKey: .bonusAmount)
        try container.encodeIfPresent(giftCertificates, forKey: .giftCertificates)
    }
}

