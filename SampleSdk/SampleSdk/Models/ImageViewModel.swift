//
// ImageViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Изображение. */
public struct ImageViewModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор файла в файловом хранилище. */
    public var fileId: UUID?
    /** Описание. */
    public var description: String?

    public init(fileId: UUID? = nil, description: String? = nil) {
        self.fileId = fileId
        self.description = description
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fileId
        case description
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(fileId, forKey: .fileId)
        try container.encodeIfPresent(description, forKey: .description)
    }
}

