//
// MerchantInfoModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Информация о магазине. */
public struct MerchantInfoModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор магазина. */
    public var id: Int?
    /** Название. */
    public var title: String?
    /** Внутреннее название. */
    public var internalTitle: String?
    /** Бренд. */
    public var brandId: UUID?
    public var location: LocationDataModel?
    public var scheduleModel: ScheduleModel?
    /** Признак архивности. */
    public var isArchived: Bool?
    /** Контакты. */
    public var contacts: String?
    /** Описание. */
    public var description: String?
    /** Дополнительная информация о магазине. */
    public var additionalInfo: [MerchantAdditionalInfoViewModel]?

    public init(id: Int? = nil, title: String? = nil, internalTitle: String? = nil, brandId: UUID? = nil, location: LocationDataModel? = nil, scheduleModel: ScheduleModel? = nil, isArchived: Bool? = nil, contacts: String? = nil, description: String? = nil, additionalInfo: [MerchantAdditionalInfoViewModel]? = nil) {
        self.id = id
        self.title = title
        self.internalTitle = internalTitle
        self.brandId = brandId
        self.location = location
        self.scheduleModel = scheduleModel
        self.isArchived = isArchived
        self.contacts = contacts
        self.description = description
        self.additionalInfo = additionalInfo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case internalTitle
        case brandId
        case location
        case scheduleModel
        case isArchived
        case contacts
        case description
        case additionalInfo
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(internalTitle, forKey: .internalTitle)
        try container.encodeIfPresent(brandId, forKey: .brandId)
        try container.encodeIfPresent(location, forKey: .location)
        try container.encodeIfPresent(scheduleModel, forKey: .scheduleModel)
        try container.encodeIfPresent(isArchived, forKey: .isArchived)
        try container.encodeIfPresent(contacts, forKey: .contacts)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(additionalInfo, forKey: .additionalInfo)
    }
}

