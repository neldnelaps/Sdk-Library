//
// CertificatePaymentActionViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель для действия \&quot;Оплата сертифкатом\&quot;. */
public struct CertificatePaymentActionViewModel: Codable, JSONEncodable, Hashable {

    /** Id действия. Если указан, редактируется действие, иначе создается новое. */
    public var actionId: Int?
    public var actionType: ActionTypeViewModel?
    /** Порядок действия. */
    public var order: Int?
    /** Значение тип. */
    public var type: String?
    /** Значение. */
    public var value: String?
    /** Значение два. */
    public var value2: String?
    /** Значение три. */
    public var value3: String?
    /** Распределить на все. */
    public var distributeToAll: Bool?
    /** Типы скидок, которые исключаются при расчете. */
    public var calculationExclusionDiscountTypes: [CalculationExclusionDiscountType]?
    public var currency: CurrencyViewModel?
    /** Курс. */
    public var rate: Double?

    public init(actionId: Int? = nil, actionType: ActionTypeViewModel? = nil, order: Int? = nil, type: String? = nil, value: String? = nil, value2: String? = nil, value3: String? = nil, distributeToAll: Bool? = nil, calculationExclusionDiscountTypes: [CalculationExclusionDiscountType]? = nil, currency: CurrencyViewModel? = nil, rate: Double? = nil) {
        self.actionId = actionId
        self.actionType = actionType
        self.order = order
        self.type = type
        self.value = value
        self.value2 = value2
        self.value3 = value3
        self.distributeToAll = distributeToAll
        self.calculationExclusionDiscountTypes = calculationExclusionDiscountTypes
        self.currency = currency
        self.rate = rate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case actionId
        case actionType
        case order
        case type
        case value
        case value2
        case value3
        case distributeToAll
        case calculationExclusionDiscountTypes
        case currency
        case rate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(actionId, forKey: .actionId)
        try container.encodeIfPresent(actionType, forKey: .actionType)
        try container.encodeIfPresent(order, forKey: .order)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(value2, forKey: .value2)
        try container.encodeIfPresent(value3, forKey: .value3)
        try container.encodeIfPresent(distributeToAll, forKey: .distributeToAll)
        try container.encodeIfPresent(calculationExclusionDiscountTypes, forKey: .calculationExclusionDiscountTypes)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(rate, forKey: .rate)
    }
}
