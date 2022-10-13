//
// PaymentLimitViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель установки ограничений на списание бонусов. */
public struct PaymentLimitViewModel: Codable, JSONEncodable, Hashable {

    public var identifierType: IdentifierType?
    /** Ограничение максимальной суммы списания бонусов (true — да, false — нет). */
    public var maximumAmountPaymentLimitEnabled: Bool?
    /** Максимальная сумма списания бонусов. */
    public var maximumAmountPaymentLimit: Int?
    /** Необходимость подтверждения списания бонусов (true — да, false — нет). */
    public var paymentConfirmCodeVerificationEnabled: Bool?
    /** Минимальная сумма для подтверждения списания. */
    public var paymentConfirmCodeVerificationAmount: Int?

    public init(identifierType: IdentifierType? = nil, maximumAmountPaymentLimitEnabled: Bool? = nil, maximumAmountPaymentLimit: Int? = nil, paymentConfirmCodeVerificationEnabled: Bool? = nil, paymentConfirmCodeVerificationAmount: Int? = nil) {
        self.identifierType = identifierType
        self.maximumAmountPaymentLimitEnabled = maximumAmountPaymentLimitEnabled
        self.maximumAmountPaymentLimit = maximumAmountPaymentLimit
        self.paymentConfirmCodeVerificationEnabled = paymentConfirmCodeVerificationEnabled
        self.paymentConfirmCodeVerificationAmount = paymentConfirmCodeVerificationAmount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case identifierType
        case maximumAmountPaymentLimitEnabled
        case maximumAmountPaymentLimit
        case paymentConfirmCodeVerificationEnabled
        case paymentConfirmCodeVerificationAmount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(identifierType, forKey: .identifierType)
        try container.encodeIfPresent(maximumAmountPaymentLimitEnabled, forKey: .maximumAmountPaymentLimitEnabled)
        try container.encodeIfPresent(maximumAmountPaymentLimit, forKey: .maximumAmountPaymentLimit)
        try container.encodeIfPresent(paymentConfirmCodeVerificationEnabled, forKey: .paymentConfirmCodeVerificationEnabled)
        try container.encodeIfPresent(paymentConfirmCodeVerificationAmount, forKey: .paymentConfirmCodeVerificationAmount)
    }
}

