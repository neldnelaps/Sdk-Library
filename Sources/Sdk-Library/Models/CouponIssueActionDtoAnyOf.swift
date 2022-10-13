//
// CouponIssueActionDtoAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CouponIssueActionDtoAnyOf: Codable, JSONEncodable, Hashable {

    /** Идентификатор выпуска. */
    public var couponEmissionId: Int?
    /** Количество выдаваемых купонов. */
    public var issueCount: Int?

    public init(couponEmissionId: Int? = nil, issueCount: Int? = nil) {
        self.couponEmissionId = couponEmissionId
        self.issueCount = issueCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case couponEmissionId
        case issueCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(couponEmissionId, forKey: .couponEmissionId)
        try container.encodeIfPresent(issueCount, forKey: .issueCount)
    }
}

