//
// DetailedAccountChangeViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DetailedAccountChangeViewModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Баланс счета на момент изменения. */
    public var balance: Double?
    /** Время исходной операции по счету в часовом поясе владельца счета. */
    public var sourceOperationDate: Date?
    /** Описание исходной операции по счету. */
    public var sourceOperationDescription: String?
    public var purchase: BonusOperationPurchaseViewModel?
    public var offer: OfferInfoShortViewModel?

    public init(balance: Double? = nil, sourceOperationDate: Date? = nil, sourceOperationDescription: String? = nil, purchase: BonusOperationPurchaseViewModel? = nil, offer: OfferInfoShortViewModel? = nil) {
        self.balance = balance
        self.sourceOperationDate = sourceOperationDate
        self.sourceOperationDescription = sourceOperationDescription
        self.purchase = purchase
        self.offer = offer
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case balance
        case sourceOperationDate
        case sourceOperationDescription
        case purchase
        case offer
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(balance, forKey: .balance)
        try container.encodeIfPresent(sourceOperationDate, forKey: .sourceOperationDate)
        try container.encodeIfPresent(sourceOperationDescription, forKey: .sourceOperationDescription)
        try container.encodeIfPresent(purchase, forKey: .purchase)
        try container.encodeIfPresent(offer, forKey: .offer)
    }
}
