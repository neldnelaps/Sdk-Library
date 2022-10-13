//
// SimpleCategoryViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Простая модель категории рекламных материалов. */
public struct SimpleCategoryViewModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор категории. */
    public var id: Int?
    /** Имя категории. */
    public var name: String?
    /** Находится ли в архиве. */
    public var isArchived: Bool?

    public init(id: Int? = nil, name: String? = nil, isArchived: Bool? = nil) {
        self.id = id
        self.name = name
        self.isArchived = isArchived
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case isArchived
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(isArchived, forKey: .isArchived)
    }
}

