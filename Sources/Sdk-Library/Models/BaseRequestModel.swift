//
// BaseRequestModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель запроса на выполнение операции. */
public struct BaseRequestModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор операции. */
    public var operationId: String?
    /** Дата операции. */
    public var operationDate: Date?
    /** Идентификатор кассира в текущем магазине (например ФИО). */
    public var cashier: String?
    public var cheque: ChequeRequestModel?
    public var params: ParamsRequestModel?

    public init(operationId: String? = nil, operationDate: Date? = nil, cashier: String? = nil, cheque: ChequeRequestModel? = nil, params: ParamsRequestModel? = nil) {
        self.operationId = operationId
        self.operationDate = operationDate
        self.cashier = cashier
        self.cheque = cheque
        self.params = params
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case operationId
        case operationDate
        case cashier
        case cheque
        case params
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(operationId, forKey: .operationId)
        try container.encodeIfPresent(operationDate, forKey: .operationDate)
        try container.encodeIfPresent(cashier, forKey: .cashier)
        try container.encodeIfPresent(cheque, forKey: .cheque)
        try container.encodeIfPresent(params, forKey: .params)
    }
}

