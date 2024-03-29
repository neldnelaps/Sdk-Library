//
// UserActionsResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель с действиями пользователя. */
public struct UserActionsResult: Codable, JSONEncodable, Hashable {

    /** Список действий пользователя. */
    public var actions: [UserActionModel]?

    public init(actions: [UserActionModel]? = nil) {
        self.actions = actions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case actions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(actions, forKey: .actions)
    }
}

