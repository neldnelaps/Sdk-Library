//
// QuestionnaireQuestionModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct QuestionnaireQuestionModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Идентификатор. */
    public var id: Int?
    /** Название. */
    public var name: String?
    /** Порядок. */
    public var order: Int?

    public init(id: Int? = nil, name: String? = nil, order: Int? = nil) {
        self.id = id
        self.name = name
        self.order = order
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case order
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(order, forKey: .order)
    }
}
