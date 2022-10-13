//
// ImageSizeAttributeRestriction.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ImageSizeAttributeRestriction: Codable, JSONEncodable, Hashable {

    public var minWidth: Int?
    public var maxWidth: Int?
    public var minHeight: Int?
    public var maxHeight: Int?
    public var minSize: Int?
    public var maxSize: Int?
    public var id: Int?

    public init(minWidth: Int? = nil, maxWidth: Int? = nil, minHeight: Int? = nil, maxHeight: Int? = nil, minSize: Int? = nil, maxSize: Int? = nil, id: Int? = nil) {
        self.minWidth = minWidth
        self.maxWidth = maxWidth
        self.minHeight = minHeight
        self.maxHeight = maxHeight
        self.minSize = minSize
        self.maxSize = maxSize
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case minWidth
        case maxWidth
        case minHeight
        case maxHeight
        case minSize
        case maxSize
        case id
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(minWidth, forKey: .minWidth)
        try container.encodeIfPresent(maxWidth, forKey: .maxWidth)
        try container.encodeIfPresent(minHeight, forKey: .minHeight)
        try container.encodeIfPresent(maxHeight, forKey: .maxHeight)
        try container.encodeIfPresent(minSize, forKey: .minSize)
        try container.encodeIfPresent(maxSize, forKey: .maxSize)
        try container.encodeIfPresent(id, forKey: .id)
    }
}

