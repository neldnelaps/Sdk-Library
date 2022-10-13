//
// OperationViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель операции для CSV-файла. */
public struct OperationViewModel: Codable, JSONEncodable, Hashable {

    /** Описание. */
    public var description: String?
    /** Внешний идентификатор начисления/списания. */
    public var externalInfo: String?
    public var identifierType: IdentifierType?
    /** Значение идентификатора клиента. */
    public var identifierValue: String?
    public var amount: MoneyViewModel?
    public var state: TransactionState?

    public init(description: String? = nil, externalInfo: String? = nil, identifierType: IdentifierType? = nil, identifierValue: String? = nil, amount: MoneyViewModel? = nil, state: TransactionState? = nil) {
        self.description = description
        self.externalInfo = externalInfo
        self.identifierType = identifierType
        self.identifierValue = identifierValue
        self.amount = amount
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case description
        case externalInfo
        case identifierType
        case identifierValue
        case amount
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(externalInfo, forKey: .externalInfo)
        try container.encodeIfPresent(identifierType, forKey: .identifierType)
        try container.encodeIfPresent(identifierValue, forKey: .identifierValue)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(state, forKey: .state)
    }
}
