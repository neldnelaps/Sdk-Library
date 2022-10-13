//
// RelatedPartner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Связанный партнер с акцией. */
public struct RelatedPartner: Codable, JSONEncodable, Hashable {

    /** Внутренный идентификатор партнера. */
    public var id: Int?
    /** Название партнера. */
    public var name: String?

    public init(id: Int? = nil, name: String? = nil) {
        self.id = id
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
    }
}
