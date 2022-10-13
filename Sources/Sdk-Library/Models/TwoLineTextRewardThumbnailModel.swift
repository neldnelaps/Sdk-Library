//
// TwoLineTextRewardThumbnailModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель описания акции, состоящей из двух строк. */
public struct TwoLineTextRewardThumbnailModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор. */
    public var id: Int?
    /** Первая строка. */
    public var firstLine: String?
    /** Вторая строка. */
    public var secondLine: String?

    public init(id: Int? = nil, firstLine: String? = nil, secondLine: String? = nil) {
        self.id = id
        self.firstLine = firstLine
        self.secondLine = secondLine
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case firstLine
        case secondLine
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(firstLine, forKey: .firstLine)
        try container.encodeIfPresent(secondLine, forKey: .secondLine)
    }
}
