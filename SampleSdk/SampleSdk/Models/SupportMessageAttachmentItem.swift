//
// SupportMessageAttachmentItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SupportMessageAttachmentItem: Codable, JSONEncodable, Hashable {

    public var fileName: String?
    public var contentType: String?
    public var content: Data?

    public init(fileName: String? = nil, contentType: String? = nil, content: Data? = nil) {
        self.fileName = fileName
        self.contentType = contentType
        self.content = content
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fileName
        case contentType
        case content
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(fileName, forKey: .fileName)
        try container.encodeIfPresent(contentType, forKey: .contentType)
        try container.encodeIfPresent(content, forKey: .content)
    }
}
