//
// OperationModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Данные операции интернет магазина. */
public struct OperationModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор операции. */
    public var operationId: String?
    /** Дата операции. */
    public var operationDate: Date?

    public init(operationId: String? = nil, operationDate: Date? = nil) {
        self.operationId = operationId
        self.operationDate = operationDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case operationId
        case operationDate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(operationId, forKey: .operationId)
        try container.encodeIfPresent(operationDate, forKey: .operationDate)
    }
}

