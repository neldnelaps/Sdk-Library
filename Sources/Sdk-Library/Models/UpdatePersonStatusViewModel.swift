//
// UpdatePersonStatusViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель статуса клиента. */
public struct UpdatePersonStatusViewModel: Codable, JSONEncodable, Hashable {

    /** Внутренний идентификатор статусной системы. */
    public var statusSystemId: Int?
    /** Внутренний идентификатор статуса. */
    public var statusId: Int?
    /** Причина изменения. */
    public var comment: String?

    public init(statusSystemId: Int? = nil, statusId: Int? = nil, comment: String? = nil) {
        self.statusSystemId = statusSystemId
        self.statusId = statusId
        self.comment = comment
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case statusSystemId
        case statusId
        case comment
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(statusSystemId, forKey: .statusSystemId)
        try container.encodeIfPresent(statusId, forKey: .statusId)
        try container.encodeIfPresent(comment, forKey: .comment)
    }
}

