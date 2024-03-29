//
// GoodsAttributeValueViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** View-модель значения атрибута товара. */
public struct GoodsAttributeValueViewModel: Codable, JSONEncodable, Hashable {

    /** Id атрибута. */
    public var attributeID: Int?
    /** Имя атрибута. */
    public var attributeName: String?
    /** Id значения атрибута. */
    public var id: Int?
    /** Значение атрибута. */
    public var value: String?

    public init(attributeID: Int? = nil, attributeName: String? = nil, id: Int? = nil, value: String? = nil) {
        self.attributeID = attributeID
        self.attributeName = attributeName
        self.id = id
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case attributeID
        case attributeName
        case id
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(attributeID, forKey: .attributeID)
        try container.encodeIfPresent(attributeName, forKey: .attributeName)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(value, forKey: .value)
    }
}

