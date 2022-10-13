//
// AttributePartnerInfoModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель информации о партнерских атрибутах клиента. */
public struct AttributePartnerInfoModel: Codable, JSONEncodable, Hashable {

    /** Внутренний идентификатор атрибута. */
    public var attributeId: Int?
    /** Наименование атрибута. */
    public var name: String?
    /** Логическое имя. */
    public var logicalName: String?

    public init(attributeId: Int? = nil, name: String? = nil, logicalName: String? = nil) {
        self.attributeId = attributeId
        self.name = name
        self.logicalName = logicalName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case attributeId
        case name
        case logicalName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(attributeId, forKey: .attributeId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(logicalName, forKey: .logicalName)
    }
}

