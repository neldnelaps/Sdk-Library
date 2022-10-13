//
// ResultModelOfMarketingCampaignViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ResultModelOfMarketingCampaignViewModelAnyOf: Codable, JSONEncodable, Hashable {

    public var data: MarketingCampaignViewModel?

    public init(data: MarketingCampaignViewModel? = nil) {
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
    }
}
