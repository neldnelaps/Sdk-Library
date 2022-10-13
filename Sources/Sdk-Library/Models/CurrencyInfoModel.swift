//
// CurrencyInfoModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель подробной информации о валюте. */
public struct CurrencyInfoModel: Codable, JSONEncodable, Hashable {

    /** Внутренний идентификатор валюты. */
    public var id: Int?
    /** Название валюты. */
    public var name: String?
    /** Код валюты. */
    public var code: String?
    /** Внешний идентификатор валюты. */
    public var uid: String?
    /** Параметр не используется, необходимо оставлять значение по умолчанию. */
    public var externalId: String?
    /** Внутренний идентификатор изображения валюты. */
    public var imageId: UUID?
    /** Описание валюты. */
    public var description: String?
    /** Признак состояния валюты (true — архивная, false — неархивная). */
    public var isDeleted: Bool?
    public var nameCases: NameCaseModel?

    public init(id: Int? = nil, name: String? = nil, code: String? = nil, uid: String? = nil, externalId: String? = nil, imageId: UUID? = nil, description: String? = nil, isDeleted: Bool? = nil, nameCases: NameCaseModel? = nil) {
        self.id = id
        self.name = name
        self.code = code
        self.uid = uid
        self.externalId = externalId
        self.imageId = imageId
        self.description = description
        self.isDeleted = isDeleted
        self.nameCases = nameCases
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case code
        case uid
        case externalId
        case imageId
        case description
        case isDeleted
        case nameCases
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(imageId, forKey: .imageId)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(isDeleted, forKey: .isDeleted)
        try container.encodeIfPresent(nameCases, forKey: .nameCases)
    }
}

