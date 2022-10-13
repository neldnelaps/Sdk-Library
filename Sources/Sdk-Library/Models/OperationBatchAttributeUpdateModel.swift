//
// OperationBatchAttributeUpdateModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель операции из пакетного обновления атрибутов клиентов. */
public struct OperationBatchAttributeUpdateModel: Codable, JSONEncodable, Hashable {

    public var identifierType: IdentifierType?
    /** Значение идентификатора клиента. */
    public var identifierValue: String?
    /** Новое значение атрибута. */
    public var updateValue: String?
    /** Название атрибута. */
    public var attributeName: String?
    public var state: DeferredOperationState?

    public init(identifierType: IdentifierType? = nil, identifierValue: String? = nil, updateValue: String? = nil, attributeName: String? = nil, state: DeferredOperationState? = nil) {
        self.identifierType = identifierType
        self.identifierValue = identifierValue
        self.updateValue = updateValue
        self.attributeName = attributeName
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case identifierType
        case identifierValue
        case updateValue
        case attributeName
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(identifierType, forKey: .identifierType)
        try container.encodeIfPresent(identifierValue, forKey: .identifierValue)
        try container.encodeIfPresent(updateValue, forKey: .updateValue)
        try container.encodeIfPresent(attributeName, forKey: .attributeName)
        try container.encodeIfPresent(state, forKey: .state)
    }
}

