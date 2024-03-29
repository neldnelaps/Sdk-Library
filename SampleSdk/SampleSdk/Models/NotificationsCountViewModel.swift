//
// NotificationsCountViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Количества уведомлений. */
public struct NotificationsCountViewModel: Codable, JSONEncodable, Hashable {

    /** Количество непрочитанных уведомлений. */
    public var unReadCount: Int?

    public init(unReadCount: Int? = nil) {
        self.unReadCount = unReadCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case unReadCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(unReadCount, forKey: .unReadCount)
    }
}

