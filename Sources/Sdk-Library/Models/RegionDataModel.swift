//
// RegionDataModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Регион. */
public struct RegionDataModel: Codable, JSONEncodable, Hashable {

    /** Внутренний идентификатор региона. */
    public var id: Int?
    /** Название. */
    public var name: String?
    /** Префикс. */
    public var _prefix: String?

    public init(id: Int? = nil, name: String? = nil, _prefix: String? = nil) {
        self.id = id
        self.name = name
        self._prefix = _prefix
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case _prefix = "prefix"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(_prefix, forKey: ._prefix)
    }
}

