//
// BalanceRequestModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель запроса на получение информации о количестве средств на счету держателя карты. */
public struct BalanceRequestModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор операции. */
    public var operationId: String?
    /** Дата операции. */
    public var operationDate: Date?
    public var giftCertificateIdentifierModel: GiftCertificateIdentifierModel?

    public init(operationId: String? = nil, operationDate: Date? = nil, giftCertificateIdentifierModel: GiftCertificateIdentifierModel? = nil) {
        self.operationId = operationId
        self.operationDate = operationDate
        self.giftCertificateIdentifierModel = giftCertificateIdentifierModel
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case operationId
        case operationDate
        case giftCertificateIdentifierModel
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(operationId, forKey: .operationId)
        try container.encodeIfPresent(operationDate, forKey: .operationDate)
        try container.encodeIfPresent(giftCertificateIdentifierModel, forKey: .giftCertificateIdentifierModel)
    }
}
