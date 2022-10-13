//
// PersonalOfferUpdateActionDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Действие \&quot;Обновление персонального предложения\&quot;. */
public struct PersonalOfferUpdateActionDto: Codable, JSONEncodable, Hashable {

    /** Порядковый номер действия в цепочке. */
    public var order: Int?
    /** Id действия в цепочке. */
    public var id: String?
    /** Логическое имя атрибута. */
    public var attributeName: String?

    public init(order: Int? = nil, id: String? = nil, attributeName: String? = nil) {
        self.order = order
        self.id = id
        self.attributeName = attributeName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case order
        case id
        case attributeName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(order, forKey: .order)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(attributeName, forKey: .attributeName)
    }
}

