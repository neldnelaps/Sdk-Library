//
// ApplicationModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ApplicationModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Внутренний идентификатор OAuth-приложения. */
    public var id: Int?
    /** Название Партнера. */
    public var partnerName: String?
    /** Список касс Партнера. */
    public var devices: [DeviceBriefViewModel]?
    public var loyaltyProgram: PartnerLoyaltyProgramModel?

    public init(id: Int? = nil, partnerName: String? = nil, devices: [DeviceBriefViewModel]? = nil, loyaltyProgram: PartnerLoyaltyProgramModel? = nil) {
        self.id = id
        self.partnerName = partnerName
        self.devices = devices
        self.loyaltyProgram = loyaltyProgram
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case partnerName
        case devices
        case loyaltyProgram
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(partnerName, forKey: .partnerName)
        try container.encodeIfPresent(devices, forKey: .devices)
        try container.encodeIfPresent(loyaltyProgram, forKey: .loyaltyProgram)
    }
}

