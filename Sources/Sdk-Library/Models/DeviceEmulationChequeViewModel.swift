//
// DeviceEmulationChequeViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель итогового состояния. */
public struct DeviceEmulationChequeViewModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор покупки. */
    public var purchaseId: Int?
    public var identifier: DeviceEmulationIdentifierViewModel?
    /** Дата. */
    public var date: Date?
    /** Магазин. */
    public var merchant: String?
    /** Номер. */
    public var number: String?
    /** Сообщение. */
    public var message: String?
    /** Итоговая скидка. */
    public var totalDiscount: Double?
    /** Итоговый бонус. */
    public var totalCashback: Double?
    /** Итоговая сумма. */
    public var totalAmount: Double?
    /** Суммарно оплачено. */
    public var totalPayed: Double?
    public var resultStateModel: DeviceEmulationResultStateViewModel?
    /** Чековые позиции. */
    public var positions: [DeviceEmulationChequeLine]?
    /** Оплаты. */
    public var payments: [DeviceEmulationPaymentViewModel]?

    public init(purchaseId: Int? = nil, identifier: DeviceEmulationIdentifierViewModel? = nil, date: Date? = nil, merchant: String? = nil, number: String? = nil, message: String? = nil, totalDiscount: Double? = nil, totalCashback: Double? = nil, totalAmount: Double? = nil, totalPayed: Double? = nil, resultStateModel: DeviceEmulationResultStateViewModel? = nil, positions: [DeviceEmulationChequeLine]? = nil, payments: [DeviceEmulationPaymentViewModel]? = nil) {
        self.purchaseId = purchaseId
        self.identifier = identifier
        self.date = date
        self.merchant = merchant
        self.number = number
        self.message = message
        self.totalDiscount = totalDiscount
        self.totalCashback = totalCashback
        self.totalAmount = totalAmount
        self.totalPayed = totalPayed
        self.resultStateModel = resultStateModel
        self.positions = positions
        self.payments = payments
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case purchaseId
        case identifier
        case date
        case merchant
        case number
        case message
        case totalDiscount
        case totalCashback
        case totalAmount
        case totalPayed
        case resultStateModel
        case positions
        case payments
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(purchaseId, forKey: .purchaseId)
        try container.encodeIfPresent(identifier, forKey: .identifier)
        try container.encodeIfPresent(date, forKey: .date)
        try container.encodeIfPresent(merchant, forKey: .merchant)
        try container.encodeIfPresent(number, forKey: .number)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(totalDiscount, forKey: .totalDiscount)
        try container.encodeIfPresent(totalCashback, forKey: .totalCashback)
        try container.encodeIfPresent(totalAmount, forKey: .totalAmount)
        try container.encodeIfPresent(totalPayed, forKey: .totalPayed)
        try container.encodeIfPresent(resultStateModel, forKey: .resultStateModel)
        try container.encodeIfPresent(positions, forKey: .positions)
        try container.encodeIfPresent(payments, forKey: .payments)
    }
}

