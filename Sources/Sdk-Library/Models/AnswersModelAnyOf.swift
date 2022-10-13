//
// AnswersModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AnswersModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Ид. набора ответов. */
    public var number: Int?
    /** Ответы. */
    public var answers: [QuestionAnswerModel]?

    public init(number: Int? = nil, answers: [QuestionAnswerModel]? = nil) {
        self.number = number
        self.answers = answers
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case number
        case answers
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(number, forKey: .number)
        try container.encodeIfPresent(answers, forKey: .answers)
    }
}

