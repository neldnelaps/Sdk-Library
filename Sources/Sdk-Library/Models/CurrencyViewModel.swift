//
// CurrencyViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель валюты. */
public struct CurrencyViewModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор валюты. */
    public var id: Int?
    /** Название. */
    public var name: String?
    public var type: CurrencyTypeEnum?
    /** Рекомендуется передавать значение null. */
    public var externalId: String?
    /** Внешний идентификатор валюты. */
    public var uid: String?
    /** Код валюты. */
    public var code: String?
    /** Значение делимости валюты. */
    public var divisibility: Double?
    /** Описание валюты. */
    public var description: String?
    public var nameCases: NameCaseModel?
    /** Признак состояния валюты (true - архивная, false - неархивная). */
    public var isDeleted: Bool?
    /** Внешний идентификатор изображения валюты. */
    public var imageId: UUID?
    /** Список партнеров. */
    public var partners: [PartnerViewModel]?
    public var accessMode: CurrencyAccessMode?

    public init(id: Int? = nil, name: String? = nil, type: CurrencyTypeEnum? = nil, externalId: String? = nil, uid: String? = nil, code: String? = nil, divisibility: Double? = nil, description: String? = nil, nameCases: NameCaseModel? = nil, isDeleted: Bool? = nil, imageId: UUID? = nil, partners: [PartnerViewModel]? = nil, accessMode: CurrencyAccessMode? = nil) {
        self.id = id
        self.name = name
        self.type = type
        self.externalId = externalId
        self.uid = uid
        self.code = code
        self.divisibility = divisibility
        self.description = description
        self.nameCases = nameCases
        self.isDeleted = isDeleted
        self.imageId = imageId
        self.partners = partners
        self.accessMode = accessMode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case type
        case externalId
        case uid
        case code
        case divisibility
        case description
        case nameCases
        case isDeleted
        case imageId
        case partners
        case accessMode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(divisibility, forKey: .divisibility)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(nameCases, forKey: .nameCases)
        try container.encodeIfPresent(isDeleted, forKey: .isDeleted)
        try container.encodeIfPresent(imageId, forKey: .imageId)
        try container.encodeIfPresent(partners, forKey: .partners)
        try container.encodeIfPresent(accessMode, forKey: .accessMode)
    }
}

