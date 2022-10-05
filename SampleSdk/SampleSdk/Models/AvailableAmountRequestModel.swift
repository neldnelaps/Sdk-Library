//
// AvailableAmountRequestModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Запрос на получение максимальной суммы оплаты. */
public struct AvailableAmountRequestModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор операции. */
    public var operationId: String?
    /** Дата операции. */
    public var operationDate: Date?
    /** Идентификатор кассира в текущем магазине (например ФИО). */
    public var cashier: String?
    public var cheque: ChequeRequestModel?
    public var params: ParamsRequestModel?
    public var giftCertificateIdentifierModel: GiftCertificateIdentifierModel?

    public init(operationId: String? = nil, operationDate: Date? = nil, cashier: String? = nil, cheque: ChequeRequestModel? = nil, params: ParamsRequestModel? = nil, giftCertificateIdentifierModel: GiftCertificateIdentifierModel? = nil) {
        self.operationId = operationId
        self.operationDate = operationDate
        self.cashier = cashier
        self.cheque = cheque
        self.params = params
        self.giftCertificateIdentifierModel = giftCertificateIdentifierModel
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case operationId
        case operationDate
        case cashier
        case cheque
        case params
        case giftCertificateIdentifierModel
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(operationId, forKey: .operationId)
        try container.encodeIfPresent(operationDate, forKey: .operationDate)
        try container.encodeIfPresent(cashier, forKey: .cashier)
        try container.encodeIfPresent(cheque, forKey: .cheque)
        try container.encodeIfPresent(params, forKey: .params)
        try container.encodeIfPresent(giftCertificateIdentifierModel, forKey: .giftCertificateIdentifierModel)
    }
}

