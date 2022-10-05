//
// BrandModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Информация о бренде. */
public struct BrandModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор. */
    public var id: UUID?
    /** Имя бренда. */
    public var name: String?
    /** Изображения. */
    public var images: [ImageViewModel]?
    /** Описание. */
    public var description: String?
    /** Url. */
    public var url: String?

    public init(id: UUID? = nil, name: String? = nil, images: [ImageViewModel]? = nil, description: String? = nil, url: String? = nil) {
        self.id = id
        self.name = name
        self.images = images
        self.description = description
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case images
        case description
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(images, forKey: .images)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(url, forKey: .url)
    }
}
