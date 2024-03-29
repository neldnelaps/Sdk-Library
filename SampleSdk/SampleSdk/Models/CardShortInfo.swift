//
// CardShortInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Краткая информация о карте. */
public struct CardShortInfo: Codable, JSONEncodable, Hashable {

    /** Идентификатор карты. */
    public var id: Int?
    /** Баланс карты. */
    public var balance: String?
    /** Заблокирована ли карта. */
    public var isBlocked: Bool?
    /** Номер карты. */
    public var number: String?

    public init(id: Int? = nil, balance: String? = nil, isBlocked: Bool? = nil, number: String? = nil) {
        self.id = id
        self.balance = balance
        self.isBlocked = isBlocked
        self.number = number
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case balance
        case isBlocked
        case number
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(balance, forKey: .balance)
        try container.encodeIfPresent(isBlocked, forKey: .isBlocked)
        try container.encodeIfPresent(number, forKey: .number)
    }
}

