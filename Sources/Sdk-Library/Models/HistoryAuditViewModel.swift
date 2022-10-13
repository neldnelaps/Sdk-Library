//
// HistoryAuditViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** View model аудита. */
public struct HistoryAuditViewModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор. */
    public var id: Int?
    /** Дата создания. */
    public var creationDate: Date?
    public var owner: UserViewModel?
    /** Номер карты. */
    public var cardNumber: String?
    /** Тип аудита. */
    public var auditType: String?
    /** Дополнительная информация. */
    public var additionalInfos: [KeyValuePairOfStringAndString]?
    public var author: CreatorModel?

    public init(id: Int? = nil, creationDate: Date? = nil, owner: UserViewModel? = nil, cardNumber: String? = nil, auditType: String? = nil, additionalInfos: [KeyValuePairOfStringAndString]? = nil, author: CreatorModel? = nil) {
        self.id = id
        self.creationDate = creationDate
        self.owner = owner
        self.cardNumber = cardNumber
        self.auditType = auditType
        self.additionalInfos = additionalInfos
        self.author = author
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case creationDate
        case owner
        case cardNumber
        case auditType
        case additionalInfos
        case author
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(creationDate, forKey: .creationDate)
        try container.encodeIfPresent(owner, forKey: .owner)
        try container.encodeIfPresent(cardNumber, forKey: .cardNumber)
        try container.encodeIfPresent(auditType, forKey: .auditType)
        try container.encodeIfPresent(additionalInfos, forKey: .additionalInfos)
        try container.encodeIfPresent(author, forKey: .author)
    }
}
