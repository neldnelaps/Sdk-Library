//
// TemplateCommonViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Шаблон общего назначения. */
public struct TemplateCommonViewModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор. */
    public var id: Int?
    /** Уникальное логическое имя. */
    public var logicalName: String?
    /** Текст. */
    public var text: String?
    /** Вес шаблона. */
    public var weight: Int?
    public var subscriptionType: MailingSubscriptionType?
    /** Флаг удаления. */
    public var isDeleted: Bool?
    /** Может ли сущность быть удалена. */
    public var canNotBeDeleted: Bool?
    /** Будет ли отправляться сообщение через тестовый шлюз. */
    public var allowSendViaTestGateway: Bool?
    /** Набор именованных шаблонов. */
    public var templates: [KeyValuePairOfStringAndString]?

    public init(id: Int? = nil, logicalName: String? = nil, text: String? = nil, weight: Int? = nil, subscriptionType: MailingSubscriptionType? = nil, isDeleted: Bool? = nil, canNotBeDeleted: Bool? = nil, allowSendViaTestGateway: Bool? = nil, templates: [KeyValuePairOfStringAndString]? = nil) {
        self.id = id
        self.logicalName = logicalName
        self.text = text
        self.weight = weight
        self.subscriptionType = subscriptionType
        self.isDeleted = isDeleted
        self.canNotBeDeleted = canNotBeDeleted
        self.allowSendViaTestGateway = allowSendViaTestGateway
        self.templates = templates
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case logicalName
        case text
        case weight
        case subscriptionType
        case isDeleted
        case canNotBeDeleted
        case allowSendViaTestGateway
        case templates
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(logicalName, forKey: .logicalName)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(weight, forKey: .weight)
        try container.encodeIfPresent(subscriptionType, forKey: .subscriptionType)
        try container.encodeIfPresent(isDeleted, forKey: .isDeleted)
        try container.encodeIfPresent(canNotBeDeleted, forKey: .canNotBeDeleted)
        try container.encodeIfPresent(allowSendViaTestGateway, forKey: .allowSendViaTestGateway)
        try container.encodeIfPresent(templates, forKey: .templates)
    }
}
