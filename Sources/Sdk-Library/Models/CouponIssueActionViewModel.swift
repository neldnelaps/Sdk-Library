//
// CouponIssueActionViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель для редактирования действия \&quot;Выдать купон\&quot;. */
public struct CouponIssueActionViewModel: Codable, JSONEncodable, Hashable {

    /** Id действия. Если указан, редактируется действие, иначе создается новое. */
    public var actionId: Int?
    public var actionType: ActionTypeViewModel?
    /** Порядок действия. */
    public var order: Int?
    /** Идентификатор выпуска купонов. */
    public var couponEmissionId: Int?
    /** Количество выдаваемых купонов. */
    public var issueCount: Int?

    public init(actionId: Int? = nil, actionType: ActionTypeViewModel? = nil, order: Int? = nil, couponEmissionId: Int? = nil, issueCount: Int? = nil) {
        self.actionId = actionId
        self.actionType = actionType
        self.order = order
        self.couponEmissionId = couponEmissionId
        self.issueCount = issueCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case actionId
        case actionType
        case order
        case couponEmissionId
        case issueCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(actionId, forKey: .actionId)
        try container.encodeIfPresent(actionType, forKey: .actionType)
        try container.encodeIfPresent(order, forKey: .order)
        try container.encodeIfPresent(couponEmissionId, forKey: .couponEmissionId)
        try container.encodeIfPresent(issueCount, forKey: .issueCount)
    }
}

