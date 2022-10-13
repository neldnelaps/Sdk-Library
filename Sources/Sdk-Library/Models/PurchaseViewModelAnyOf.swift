//
// PurchaseViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PurchaseViewModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Время завершения или отмены покупки. */
    public var completeTime: Date?
    /** Kассир. */
    public var deviceCode: String?
    public var merchant: MerchantViewModel?
    public var legal: LegalViewModel?
    public var state: PurchaseState?
    /** Является ли состояние покупки конечным. */
    public var isFinalState: Bool?
    /** Id программы лояльности. */
    public var loyaltyProgramId: Int?
    /** Id покупателя (номер карты или телефон или... */
    public var personIdentifier: String?
    /** Номера использованных купонов. */
    public var couponNumbers: [String]?
    /** Часовой пояс. */
    public var timeZone: Int?
    /** Дополнительные аттрибуты чека. */
    public var chequeAdditionalAttributes: [ChequePositionAttributeViewModel]?

    public init(completeTime: Date? = nil, deviceCode: String? = nil, merchant: MerchantViewModel? = nil, legal: LegalViewModel? = nil, state: PurchaseState? = nil, isFinalState: Bool? = nil, loyaltyProgramId: Int? = nil, personIdentifier: String? = nil, couponNumbers: [String]? = nil, timeZone: Int? = nil, chequeAdditionalAttributes: [ChequePositionAttributeViewModel]? = nil) {
        self.completeTime = completeTime
        self.deviceCode = deviceCode
        self.merchant = merchant
        self.legal = legal
        self.state = state
        self.isFinalState = isFinalState
        self.loyaltyProgramId = loyaltyProgramId
        self.personIdentifier = personIdentifier
        self.couponNumbers = couponNumbers
        self.timeZone = timeZone
        self.chequeAdditionalAttributes = chequeAdditionalAttributes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case completeTime
        case deviceCode
        case merchant
        case legal
        case state
        case isFinalState
        case loyaltyProgramId
        case personIdentifier
        case couponNumbers
        case timeZone
        case chequeAdditionalAttributes
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(completeTime, forKey: .completeTime)
        try container.encodeIfPresent(deviceCode, forKey: .deviceCode)
        try container.encodeIfPresent(merchant, forKey: .merchant)
        try container.encodeIfPresent(legal, forKey: .legal)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(isFinalState, forKey: .isFinalState)
        try container.encodeIfPresent(loyaltyProgramId, forKey: .loyaltyProgramId)
        try container.encodeIfPresent(personIdentifier, forKey: .personIdentifier)
        try container.encodeIfPresent(couponNumbers, forKey: .couponNumbers)
        try container.encodeIfPresent(timeZone, forKey: .timeZone)
        try container.encodeIfPresent(chequeAdditionalAttributes, forKey: .chequeAdditionalAttributes)
    }
}
