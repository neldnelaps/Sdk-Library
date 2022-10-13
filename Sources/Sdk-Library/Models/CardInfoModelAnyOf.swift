//
// CardInfoModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CardInfoModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Признак необходимости проверки пароля (true-проверка необходима, false-проверка не требуется). */
    public var passwordRequired: Bool?
    /** Является ли карта удаленной (true-карта удалена, false-карта не удалена). */
    public var isDeleted: Bool?
    /** Дата замены карты. */
    public var replacementDate: Date?
    public var replacementSource: ReplaceCardSource?

    public init(passwordRequired: Bool? = nil, isDeleted: Bool? = nil, replacementDate: Date? = nil, replacementSource: ReplaceCardSource? = nil) {
        self.passwordRequired = passwordRequired
        self.isDeleted = isDeleted
        self.replacementDate = replacementDate
        self.replacementSource = replacementSource
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case passwordRequired
        case isDeleted
        case replacementDate
        case replacementSource
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(passwordRequired, forKey: .passwordRequired)
        try container.encodeIfPresent(isDeleted, forKey: .isDeleted)
        try container.encodeIfPresent(replacementDate, forKey: .replacementDate)
        try container.encodeIfPresent(replacementSource, forKey: .replacementSource)
    }
}

