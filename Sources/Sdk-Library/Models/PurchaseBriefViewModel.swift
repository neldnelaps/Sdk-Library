//
// PurchaseBriefViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Краткая модель покупки. */
public struct PurchaseBriefViewModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор покупки. */
    public var purchaseId: Int?
    /** Время покупки. */
    public var purchaseTime: Date?
    /** Номер чека. */
    public var chequeNumber: String?

    public init(purchaseId: Int? = nil, purchaseTime: Date? = nil, chequeNumber: String? = nil) {
        self.purchaseId = purchaseId
        self.purchaseTime = purchaseTime
        self.chequeNumber = chequeNumber
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case purchaseId
        case purchaseTime
        case chequeNumber
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(purchaseId, forKey: .purchaseId)
        try container.encodeIfPresent(purchaseTime, forKey: .purchaseTime)
        try container.encodeIfPresent(chequeNumber, forKey: .chequeNumber)
    }
}
