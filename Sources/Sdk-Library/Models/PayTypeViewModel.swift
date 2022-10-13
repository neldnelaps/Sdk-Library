//
// PayTypeViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель представления способа оплаты. */
public struct PayTypeViewModel: Codable, JSONEncodable, Hashable {

    /** Identifire. */
    public var id: Int?
    /** Название способа оплаты. */
    public var name: String?
    /** Логическое имя способа оплаты. */
    public var logicalName: String?
    /** Описание способа оплаты. */
    public var description: String?
    /** Признак дефолтного способа оплаты. */
    public var isDefault: Bool?
    /** Признак архивности способа оплаты. */
    public var isArchived: Bool?

    public init(id: Int? = nil, name: String? = nil, logicalName: String? = nil, description: String? = nil, isDefault: Bool? = nil, isArchived: Bool? = nil) {
        self.id = id
        self.name = name
        self.logicalName = logicalName
        self.description = description
        self.isDefault = isDefault
        self.isArchived = isArchived
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case logicalName
        case description
        case isDefault
        case isArchived
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(logicalName, forKey: .logicalName)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(isDefault, forKey: .isDefault)
        try container.encodeIfPresent(isArchived, forKey: .isArchived)
    }
}
