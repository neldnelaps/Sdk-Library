//
// MailingViberMessageViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель viber сообщения рассылки. */
public struct MailingViberMessageViewModel: Codable, JSONEncodable, Hashable {

    /** Текст. */
    public var text: String?
    /** Дополнительные параметры. */
    public var additionalInfo: [KeyValuePairOfStringAndString]?
    /** Текст кнопки. */
    public var buttonText: String?
    /** URL адрес. */
    public var url: String?
    /** Идентификатор изображения. */
    public var imageId: UUID?

    public init(text: String? = nil, additionalInfo: [KeyValuePairOfStringAndString]? = nil, buttonText: String? = nil, url: String? = nil, imageId: UUID? = nil) {
        self.text = text
        self.additionalInfo = additionalInfo
        self.buttonText = buttonText
        self.url = url
        self.imageId = imageId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case text
        case additionalInfo
        case buttonText
        case url
        case imageId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(additionalInfo, forKey: .additionalInfo)
        try container.encodeIfPresent(buttonText, forKey: .buttonText)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(imageId, forKey: .imageId)
    }
}

