//
// SystemApiStatusViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель статуса пользователя. */
public struct SystemApiStatusViewModel: Codable, JSONEncodable, Hashable {

    /** Название статуса. */
    public var name: String?
    /** Верхний порог, до которого действует статус. */
    public var threshold: Double?
    /** Описание статуса. */
    public var description: String?
    /** Преференции статуса. */
    public var preferences: String?
    /** Id статуса. */
    public var id: Int?

    public init(name: String? = nil, threshold: Double? = nil, description: String? = nil, preferences: String? = nil, id: Int? = nil) {
        self.name = name
        self.threshold = threshold
        self.description = description
        self.preferences = preferences
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case threshold
        case description
        case preferences
        case id
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(threshold, forKey: .threshold)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(preferences, forKey: .preferences)
        try container.encodeIfPresent(id, forKey: .id)
    }
}
