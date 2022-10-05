//
// PersonalOfferAttributesModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель списка атрибутов персональных предложений. */
public struct PersonalOfferAttributesModel: Codable, JSONEncodable, Hashable {

    /** Список идентификаторов атрибутов. */
    public var attributesIds: [Int]?

    public init(attributesIds: [Int]? = nil) {
        self.attributesIds = attributesIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case attributesIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(attributesIds, forKey: .attributesIds)
    }
}
