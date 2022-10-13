//
// DeleteActionModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DeleteActionModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Id цепочки действий. */
    public var actionChainId: Int?
    /** Id действия. */
    public var actionId: Int?

    public init(actionChainId: Int? = nil, actionId: Int? = nil) {
        self.actionChainId = actionChainId
        self.actionId = actionId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case actionChainId
        case actionId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(actionChainId, forKey: .actionChainId)
        try container.encodeIfPresent(actionId, forKey: .actionId)
    }
}
