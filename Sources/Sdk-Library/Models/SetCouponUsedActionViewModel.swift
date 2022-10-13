//
// SetCouponUsedActionViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель для редактирования действия погашения купонов. */
public struct SetCouponUsedActionViewModel: Codable, JSONEncodable, Hashable {

    /** Id действия. Если указан, редактируется действие, иначе создается новое. */
    public var actionId: Int?
    public var actionType: ActionTypeViewModel?
    /** Порядок действия. */
    public var order: Int?

    public init(actionId: Int? = nil, actionType: ActionTypeViewModel? = nil, order: Int? = nil) {
        self.actionId = actionId
        self.actionType = actionType
        self.order = order
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case actionId
        case actionType
        case order
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(actionId, forKey: .actionId)
        try container.encodeIfPresent(actionType, forKey: .actionType)
        try container.encodeIfPresent(order, forKey: .order)
    }
}

