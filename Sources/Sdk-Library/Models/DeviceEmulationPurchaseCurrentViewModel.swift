//
// DeviceEmulationPurchaseCurrentViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель покупки. */
public struct DeviceEmulationPurchaseCurrentViewModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор. */
    public var id: Int?
    /** Дата покупки. */
    public var purchaseDate: Date?
    /** Идентификатор кассы. */
    public var deviceId: Int?
    public var state: DeviceEmulationPurchaseState?
    public var identifier: DeviceEmulationIdentifierViewModel?
    /** Возможно ли подтвердить?. */
    public var isAbleToConfirm: Bool?
    /** Общая сумма. */
    public var totalAmount: Double?
    /** Суммарно оплачено. */
    public var totalPayed: Double?
    /** Сумма без скидки. */
    public var amountWithoutDiscount: Double?
    /** Идентификатор партнера. */
    public var partnerId: Int?
    /** Позиции. */
    public var positions: [DeviceEmulationPositionViewModel]?
    /** Оплаты. */
    public var payments: [DeviceEmulationPaymentViewModel]?
    /** Купоны. */
    public var coupons: [DeviceEmulationCouponModel]?
    public var resultStateModel: DeviceEmulationResultStateViewModel?
    /** Параметры чека. */
    public var chequeAdditionalAttributes: [DeviceEmulationPurchaseParamViewModel]?

    public init(id: Int? = nil, purchaseDate: Date? = nil, deviceId: Int? = nil, state: DeviceEmulationPurchaseState? = nil, identifier: DeviceEmulationIdentifierViewModel? = nil, isAbleToConfirm: Bool? = nil, totalAmount: Double? = nil, totalPayed: Double? = nil, amountWithoutDiscount: Double? = nil, partnerId: Int? = nil, positions: [DeviceEmulationPositionViewModel]? = nil, payments: [DeviceEmulationPaymentViewModel]? = nil, coupons: [DeviceEmulationCouponModel]? = nil, resultStateModel: DeviceEmulationResultStateViewModel? = nil, chequeAdditionalAttributes: [DeviceEmulationPurchaseParamViewModel]? = nil) {
        self.id = id
        self.purchaseDate = purchaseDate
        self.deviceId = deviceId
        self.state = state
        self.identifier = identifier
        self.isAbleToConfirm = isAbleToConfirm
        self.totalAmount = totalAmount
        self.totalPayed = totalPayed
        self.amountWithoutDiscount = amountWithoutDiscount
        self.partnerId = partnerId
        self.positions = positions
        self.payments = payments
        self.coupons = coupons
        self.resultStateModel = resultStateModel
        self.chequeAdditionalAttributes = chequeAdditionalAttributes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case purchaseDate
        case deviceId
        case state
        case identifier
        case isAbleToConfirm
        case totalAmount
        case totalPayed
        case amountWithoutDiscount
        case partnerId
        case positions
        case payments
        case coupons
        case resultStateModel
        case chequeAdditionalAttributes
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(purchaseDate, forKey: .purchaseDate)
        try container.encodeIfPresent(deviceId, forKey: .deviceId)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(identifier, forKey: .identifier)
        try container.encodeIfPresent(isAbleToConfirm, forKey: .isAbleToConfirm)
        try container.encodeIfPresent(totalAmount, forKey: .totalAmount)
        try container.encodeIfPresent(totalPayed, forKey: .totalPayed)
        try container.encodeIfPresent(amountWithoutDiscount, forKey: .amountWithoutDiscount)
        try container.encodeIfPresent(partnerId, forKey: .partnerId)
        try container.encodeIfPresent(positions, forKey: .positions)
        try container.encodeIfPresent(payments, forKey: .payments)
        try container.encodeIfPresent(coupons, forKey: .coupons)
        try container.encodeIfPresent(resultStateModel, forKey: .resultStateModel)
        try container.encodeIfPresent(chequeAdditionalAttributes, forKey: .chequeAdditionalAttributes)
    }
}

