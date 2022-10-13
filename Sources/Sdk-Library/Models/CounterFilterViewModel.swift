//
// CounterFilterViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** View модель фильтра \&quot;Счётчик\&quot;. */
public struct CounterFilterViewModel: Codable, JSONEncodable, Hashable {

    public var id: Int?
    public var name: String?
    public var isDeletedFilterType: Bool?
    public var processParameters: String?
    /** Id. */
    public var counterId: Int?
    /** Название. */
    public var counterName: String?
    public var operation: FilterOperation?
    public var restrictionsType: CounterFilterRestrictionsType?
    /** Значение для сравнения. */
    public var value: Double?
    /** Дополнительная информация фильтра для счетчика. */
    public var addinitionalInfromation: [CounterFilterAdditionalInformationViewModel]?
    public var restrictionPeriodType: RestrictionPeriodType?
    /** Ограничение для просмотра изменения значений в минутах. */
    public var restrictionPeriod: Int?
    public var periodType: DatePeriodType?
    /** Дата1. */
    public var dateFrom: Date?
    /** Дата2. */
    public var dateTo: Date?

    public init(id: Int? = nil, name: String? = nil, isDeletedFilterType: Bool? = nil, processParameters: String? = nil, counterId: Int? = nil, counterName: String? = nil, operation: FilterOperation? = nil, restrictionsType: CounterFilterRestrictionsType? = nil, value: Double? = nil, addinitionalInfromation: [CounterFilterAdditionalInformationViewModel]? = nil, restrictionPeriodType: RestrictionPeriodType? = nil, restrictionPeriod: Int? = nil, periodType: DatePeriodType? = nil, dateFrom: Date? = nil, dateTo: Date? = nil) {
        self.id = id
        self.name = name
        self.isDeletedFilterType = isDeletedFilterType
        self.processParameters = processParameters
        self.counterId = counterId
        self.counterName = counterName
        self.operation = operation
        self.restrictionsType = restrictionsType
        self.value = value
        self.addinitionalInfromation = addinitionalInfromation
        self.restrictionPeriodType = restrictionPeriodType
        self.restrictionPeriod = restrictionPeriod
        self.periodType = periodType
        self.dateFrom = dateFrom
        self.dateTo = dateTo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case isDeletedFilterType
        case processParameters
        case counterId
        case counterName
        case operation
        case restrictionsType
        case value
        case addinitionalInfromation
        case restrictionPeriodType
        case restrictionPeriod
        case periodType
        case dateFrom
        case dateTo
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(isDeletedFilterType, forKey: .isDeletedFilterType)
        try container.encodeIfPresent(processParameters, forKey: .processParameters)
        try container.encodeIfPresent(counterId, forKey: .counterId)
        try container.encodeIfPresent(counterName, forKey: .counterName)
        try container.encodeIfPresent(operation, forKey: .operation)
        try container.encodeIfPresent(restrictionsType, forKey: .restrictionsType)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(addinitionalInfromation, forKey: .addinitionalInfromation)
        try container.encodeIfPresent(restrictionPeriodType, forKey: .restrictionPeriodType)
        try container.encodeIfPresent(restrictionPeriod, forKey: .restrictionPeriod)
        try container.encodeIfPresent(periodType, forKey: .periodType)
        try container.encodeIfPresent(dateFrom, forKey: .dateFrom)
        try container.encodeIfPresent(dateTo, forKey: .dateTo)
    }
}
