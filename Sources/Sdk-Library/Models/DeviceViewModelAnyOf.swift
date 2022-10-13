//
// DeviceViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DeviceViewModelAnyOf: Codable, JSONEncodable, Hashable {

    public var merchant: MerchantInfoShortViewModel?
    public var legal: LegalViewModel?
    public var type: DeviceTypeViewModel?
    /** Идентификатор группы счетов. */
    public var accountGroupId: Int?
    public var operationAuthType: DeviceOperationAuthType?
    public var refundType: RefundType?
    /** Оплата на единицу позиции (true — да, false — нет). */
    public var isPerUnit: Bool?
    /** Признак состояния кассы (true — архивный, false — неархивный). */
    public var isDeleted: Bool?
    public var urlAuth: UrlAuthViewModel?
    public var currency: CurrencyViewModel?
    /** Сертификат с публичным ключом кассы. */
    public var certificate: String?
    public var requestAuthType: RequestAuthType?

    public init(merchant: MerchantInfoShortViewModel? = nil, legal: LegalViewModel? = nil, type: DeviceTypeViewModel? = nil, accountGroupId: Int? = nil, operationAuthType: DeviceOperationAuthType? = nil, refundType: RefundType? = nil, isPerUnit: Bool? = nil, isDeleted: Bool? = nil, urlAuth: UrlAuthViewModel? = nil, currency: CurrencyViewModel? = nil, certificate: String? = nil, requestAuthType: RequestAuthType? = nil) {
        self.merchant = merchant
        self.legal = legal
        self.type = type
        self.accountGroupId = accountGroupId
        self.operationAuthType = operationAuthType
        self.refundType = refundType
        self.isPerUnit = isPerUnit
        self.isDeleted = isDeleted
        self.urlAuth = urlAuth
        self.currency = currency
        self.certificate = certificate
        self.requestAuthType = requestAuthType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case merchant
        case legal
        case type
        case accountGroupId
        case operationAuthType
        case refundType
        case isPerUnit
        case isDeleted
        case urlAuth
        case currency
        case certificate
        case requestAuthType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(merchant, forKey: .merchant)
        try container.encodeIfPresent(legal, forKey: .legal)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(accountGroupId, forKey: .accountGroupId)
        try container.encodeIfPresent(operationAuthType, forKey: .operationAuthType)
        try container.encodeIfPresent(refundType, forKey: .refundType)
        try container.encodeIfPresent(isPerUnit, forKey: .isPerUnit)
        try container.encodeIfPresent(isDeleted, forKey: .isDeleted)
        try container.encodeIfPresent(urlAuth, forKey: .urlAuth)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(certificate, forKey: .certificate)
        try container.encodeIfPresent(requestAuthType, forKey: .requestAuthType)
    }
}
