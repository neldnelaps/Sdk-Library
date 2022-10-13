//
// AttributeDiscountDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Скидка из атрибута товара. */
public struct AttributeDiscountDto: Codable, JSONEncodable, Hashable {

    public var attributeDiscountType: AttributeDiscountType?
    /** Id атрибута каталога. */
    public var catalogAttributeId: Int?

    public init(attributeDiscountType: AttributeDiscountType? = nil, catalogAttributeId: Int? = nil) {
        self.attributeDiscountType = attributeDiscountType
        self.catalogAttributeId = catalogAttributeId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case attributeDiscountType
        case catalogAttributeId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(attributeDiscountType, forKey: .attributeDiscountType)
        try container.encodeIfPresent(catalogAttributeId, forKey: .catalogAttributeId)
    }
}

