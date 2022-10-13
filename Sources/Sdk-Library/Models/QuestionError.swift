//
// QuestionError.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Ошибка при ответе на вопрос. */
public struct QuestionError: Codable, JSONEncodable, Hashable {

    /** Идентификатор вопроса. */
    public var idQuestion: String?
    /** Набор ошибок. */
    public var errors: [String]?

    public init(idQuestion: String? = nil, errors: [String]? = nil) {
        self.idQuestion = idQuestion
        self.errors = errors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case idQuestion
        case errors
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(idQuestion, forKey: .idQuestion)
        try container.encodeIfPresent(errors, forKey: .errors)
    }
}
