//
// BaseApplicationModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Базовый класс View-модели приложения. */
public struct BaseApplicationModel: Codable, JSONEncodable, Hashable {

    /** Название OAuth-приложения. */
    public var name: String?
    /** Логический идентификатор OAuth-приложения. */
    public var alias: String?
    /** Описание OAuth-приложения. */
    public var description: String?
    /** Статус OAuth-приложения (true - архивный, false - неархивный). */
    public var isDeleted: Bool?
    /** Перечень разрешенных редиректов. */
    public var redirects: [String]?
    /** Внутренний идентификатор Партнера (Id). */
    public var partnerId: Int?
    /** Кастомизированные настройки CSS. */
    public var cssUri: String?

    public init(name: String? = nil, alias: String? = nil, description: String? = nil, isDeleted: Bool? = nil, redirects: [String]? = nil, partnerId: Int? = nil, cssUri: String? = nil) {
        self.name = name
        self.alias = alias
        self.description = description
        self.isDeleted = isDeleted
        self.redirects = redirects
        self.partnerId = partnerId
        self.cssUri = cssUri
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case alias
        case description
        case isDeleted
        case redirects
        case partnerId
        case cssUri
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(alias, forKey: .alias)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(isDeleted, forKey: .isDeleted)
        try container.encodeIfPresent(redirects, forKey: .redirects)
        try container.encodeIfPresent(partnerId, forKey: .partnerId)
        try container.encodeIfPresent(cssUri, forKey: .cssUri)
    }
}
