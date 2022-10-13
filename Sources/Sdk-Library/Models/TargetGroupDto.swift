//
// TargetGroupDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Существующая целевая аудитория. */
public struct TargetGroupDto: Codable, JSONEncodable, Hashable {

    /** Id целевой аудитории. */
    public var id: Int?

    public init(id: Int? = nil) {
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
    }
}

