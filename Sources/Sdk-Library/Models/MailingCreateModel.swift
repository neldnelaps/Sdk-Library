//
// MailingCreateModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель создания рассылки. */
public struct MailingCreateModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор юр.лица. */
    public var legalId: Int?
    /** Название рассылки. */
    public var name: String?
    public var waySendType: MailingWaySendType?
    /** Программа лояльности. */
    public var loyaltyProgramId: Int?
    /** Идентификатор маркетинговой компании. */
    public var marketingCampaignId: Int?

    public init(legalId: Int? = nil, name: String? = nil, waySendType: MailingWaySendType? = nil, loyaltyProgramId: Int? = nil, marketingCampaignId: Int? = nil) {
        self.legalId = legalId
        self.name = name
        self.waySendType = waySendType
        self.loyaltyProgramId = loyaltyProgramId
        self.marketingCampaignId = marketingCampaignId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case legalId
        case name
        case waySendType
        case loyaltyProgramId
        case marketingCampaignId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(legalId, forKey: .legalId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(waySendType, forKey: .waySendType)
        try container.encodeIfPresent(loyaltyProgramId, forKey: .loyaltyProgramId)
        try container.encodeIfPresent(marketingCampaignId, forKey: .marketingCampaignId)
    }
}

