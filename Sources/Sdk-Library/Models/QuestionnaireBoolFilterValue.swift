//
// QuestionnaireBoolFilterValue.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Значение фильтра по булевому вопросу анкеты. */
public struct QuestionnaireBoolFilterValue: Codable, JSONEncodable, Hashable {

    /** Булевое значение. */
    public var value: Bool?

    public init(value: Bool? = nil) {
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(value, forKey: .value)
    }
}

