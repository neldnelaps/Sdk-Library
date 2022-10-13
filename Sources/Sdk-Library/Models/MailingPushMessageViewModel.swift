//
// MailingPushMessageViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель пуш сообщения рассылки. */
public struct MailingPushMessageViewModel: Codable, JSONEncodable, Hashable {

    /** Текст. */
    public var text: String?
    /** Дополнительные параметры. */
    public var additionalInfo: [KeyValuePairOfStringAndString]?
    /** Заголовок. */
    public var header: String?
    /** Идентификатор изображения. */
    public var imageId: UUID?
    /** Короткий текст. */
    public var shortText: String?

    public init(text: String? = nil, additionalInfo: [KeyValuePairOfStringAndString]? = nil, header: String? = nil, imageId: UUID? = nil, shortText: String? = nil) {
        self.text = text
        self.additionalInfo = additionalInfo
        self.header = header
        self.imageId = imageId
        self.shortText = shortText
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case text
        case additionalInfo
        case header
        case imageId
        case shortText
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(additionalInfo, forKey: .additionalInfo)
        try container.encodeIfPresent(header, forKey: .header)
        try container.encodeIfPresent(imageId, forKey: .imageId)
        try container.encodeIfPresent(shortText, forKey: .shortText)
    }
}
