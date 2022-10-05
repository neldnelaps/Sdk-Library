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

/** Модель с информацией о валюте. */
public struct CurrencyInfoModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор валюты. */
    public var id: Int?
    /** Название. */
    public var name: String?
    /** Внешний идентификатор. */
    public var externalId: String?
    /** Описание. */
    public var description: String?
    /** Является ли валюта архивной. */
    public var isDeleted: Bool?
    public var nameCases: NameCaseModel?

    public init(id: Int? = nil, name: String? = nil, externalId: String? = nil, description: String? = nil, isDeleted: Bool? = nil, nameCases: NameCaseModel? = nil) {
        self.id = id
        self.name = name
        self.externalId = externalId
        self.description = description
        self.isDeleted = isDeleted
        self.nameCases = nameCases
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case externalId
        case description
        case isDeleted
        case nameCases
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(isDeleted, forKey: .isDeleted)
        try container.encodeIfPresent(nameCases, forKey: .nameCases)
    }
}
