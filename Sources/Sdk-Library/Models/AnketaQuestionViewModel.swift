//
// AnketaQuestionViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель вопроса анкеты. */
public struct AnketaQuestionViewModel: Codable, JSONEncodable, Hashable {

    /** Внутренний идентификатор вопроса анкеты. */
    public var id: Int?
    /** Вопрос (отображаемое название). */
    public var displayName: String?
    public var type: QuestionType?
    /** Признак состояния вопроса (true — архивный, false — неархивный). */
    public var isArchived: Bool?
    /** Доступные значения (для типов с выбором значений). */
    public var items: [AnketaQuestionViewModelItem]?

    public init(id: Int? = nil, displayName: String? = nil, type: QuestionType? = nil, isArchived: Bool? = nil, items: [AnketaQuestionViewModelItem]? = nil) {
        self.id = id
        self.displayName = displayName
        self.type = type
        self.isArchived = isArchived
        self.items = items
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case displayName
        case type
        case isArchived
        case items
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(isArchived, forKey: .isArchived)
        try container.encodeIfPresent(items, forKey: .items)
    }
}
