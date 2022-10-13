//
// ItemDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Элемент каталога. */
public struct ItemDto: Codable, JSONEncodable, Hashable {

    public var type: ItemType?
    /** Значение элемента. */
    public var value: String?

    public init(type: ItemType? = nil, value: String? = nil) {
        self.type = type
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(value, forKey: .value)
    }
}
