//
// PersonAttributeValueHistoryModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель истории изменения значений атрибута пользователя. */
public struct PersonAttributeValueHistoryModel: Codable, JSONEncodable, Hashable {

    public var attributeType: UserAttributeType?
    /** Логическое имя атрибута. */
    public var attributeLogicalName: String?
    /** Имя атрибута. */
    public var attributeName: String?
    /** Общее количество элементов истории. */
    public var totalCount: Int?
    /** Есть ли в перечислении еще элементы, которые не вошли в TotalCount. */
    public var hasOverflowCount: Bool?
    /** Элементы истории изменения значений атрибутов. */
    public var attributeValueHistoryItems: [AttributeValueHistoryItem]?
    /** Порядковый номер атрибута. */
    public var attributeOrder: Int?

    public init(attributeType: UserAttributeType? = nil, attributeLogicalName: String? = nil, attributeName: String? = nil, totalCount: Int? = nil, hasOverflowCount: Bool? = nil, attributeValueHistoryItems: [AttributeValueHistoryItem]? = nil, attributeOrder: Int? = nil) {
        self.attributeType = attributeType
        self.attributeLogicalName = attributeLogicalName
        self.attributeName = attributeName
        self.totalCount = totalCount
        self.hasOverflowCount = hasOverflowCount
        self.attributeValueHistoryItems = attributeValueHistoryItems
        self.attributeOrder = attributeOrder
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case attributeType
        case attributeLogicalName
        case attributeName
        case totalCount
        case hasOverflowCount
        case attributeValueHistoryItems
        case attributeOrder
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(attributeType, forKey: .attributeType)
        try container.encodeIfPresent(attributeLogicalName, forKey: .attributeLogicalName)
        try container.encodeIfPresent(attributeName, forKey: .attributeName)
        try container.encodeIfPresent(totalCount, forKey: .totalCount)
        try container.encodeIfPresent(hasOverflowCount, forKey: .hasOverflowCount)
        try container.encodeIfPresent(attributeValueHistoryItems, forKey: .attributeValueHistoryItems)
        try container.encodeIfPresent(attributeOrder, forKey: .attributeOrder)
    }
}

