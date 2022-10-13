//
// SocialGroupLeaveEventDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Выход из группы социальной сети. */
public struct SocialGroupLeaveEventDto: Codable, JSONEncodable, Hashable {

    /** Цепочки действий для обработки события. */
    public var chains: [OfferActionsChainDto]?

    public init(chains: [OfferActionsChainDto]? = nil) {
        self.chains = chains
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case chains
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(chains, forKey: .chains)
    }
}

