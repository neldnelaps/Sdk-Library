//
// BaseOperationResultModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Результат операции. */
public struct BaseOperationResultModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор операции на сервере Loymax. */
    public var transactionId: Int64?
    /** Логическое имя устройства в системе Loymax. */
    public var deviceLogicalId: String?
    /** Идентификатор операции. */
    public var operationId: String?
    public var code: ErrorCode?
    /** Комментарий ошибки. */
    public var errorMessage: String?
    /** Информация для вывода кассиру. */
    public var cashierMessage: String?
    /** Информация для вывода клиенту в чек. */
    public var chequeMessage: String?
    public var cheque: ChequeResponseModel?
    /** Информация о Программах лояльности. */
    public var loyaltyPrograms: [LoyaltyProgramResponseModel]?
    /** Дополнительная информация. */
    public var identificationData: [ItemDataModel]?

    public init(transactionId: Int64? = nil, deviceLogicalId: String? = nil, operationId: String? = nil, code: ErrorCode? = nil, errorMessage: String? = nil, cashierMessage: String? = nil, chequeMessage: String? = nil, cheque: ChequeResponseModel? = nil, loyaltyPrograms: [LoyaltyProgramResponseModel]? = nil, identificationData: [ItemDataModel]? = nil) {
        self.transactionId = transactionId
        self.deviceLogicalId = deviceLogicalId
        self.operationId = operationId
        self.code = code
        self.errorMessage = errorMessage
        self.cashierMessage = cashierMessage
        self.chequeMessage = chequeMessage
        self.cheque = cheque
        self.loyaltyPrograms = loyaltyPrograms
        self.identificationData = identificationData
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case transactionId
        case deviceLogicalId
        case operationId
        case code
        case errorMessage
        case cashierMessage
        case chequeMessage
        case cheque
        case loyaltyPrograms
        case identificationData
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(transactionId, forKey: .transactionId)
        try container.encodeIfPresent(deviceLogicalId, forKey: .deviceLogicalId)
        try container.encodeIfPresent(operationId, forKey: .operationId)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(errorMessage, forKey: .errorMessage)
        try container.encodeIfPresent(cashierMessage, forKey: .cashierMessage)
        try container.encodeIfPresent(chequeMessage, forKey: .chequeMessage)
        try container.encodeIfPresent(cheque, forKey: .cheque)
        try container.encodeIfPresent(loyaltyPrograms, forKey: .loyaltyPrograms)
        try container.encodeIfPresent(identificationData, forKey: .identificationData)
    }
}

