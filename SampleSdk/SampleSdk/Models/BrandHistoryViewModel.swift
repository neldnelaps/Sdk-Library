//
// BrandHistoryViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель представления для бренда. */
public struct BrandHistoryViewModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор. */
    public var externalId: UUID?
    /** Имя бренда. */
    public var name: String?
    /** Изображения. */
    public var images: [ImageViewModel]?

    public init(externalId: UUID? = nil, name: String? = nil, images: [ImageViewModel]? = nil) {
        self.externalId = externalId
        self.name = name
        self.images = images
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case externalId
        case name
        case images
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(images, forKey: .images)
    }
}

