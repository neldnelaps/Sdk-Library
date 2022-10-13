//
// CounterFilterDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Фильтр \&quot;Счётчик\&quot;. */
public struct CounterFilterDto: Codable, JSONEncodable, Hashable {

    /** Имя фильтра. */
    public var name: String?
    /** Параметры обработки. */
    public var processParameters: String?
    /** Счетчик. */
    public var counter: AnyCodable?
    public var operation: ComparisonOperator?
    /** Значение для сравнения. */
    public var value: Double?
    public var restrictionsType: CounterFilterRestrictionsType?
    /** Дополнительные параметры. */
    public var addinitionalInfromation: [CounterFilterAddinitionalInfromationDto]?
    /** Ограничение для просмотра изменения значений в ед. */
    public var restrictionPeriod: Int?
    public var periodType: DatePeriodType?
    /** С. */
    public var dateFrom: Date?
    /** По. */
    public var dateTo: Date?
    public var restrictionPeriodType: RestrictionPeriodType?

    public init(name: String? = nil, processParameters: String? = nil, counter: AnyCodable? = nil, operation: ComparisonOperator? = nil, value: Double? = nil, restrictionsType: CounterFilterRestrictionsType? = nil, addinitionalInfromation: [CounterFilterAddinitionalInfromationDto]? = nil, restrictionPeriod: Int? = nil, periodType: DatePeriodType? = nil, dateFrom: Date? = nil, dateTo: Date? = nil, restrictionPeriodType: RestrictionPeriodType? = nil) {
        self.name = name
        self.processParameters = processParameters
        self.counter = counter
        self.operation = operation
        self.value = value
        self.restrictionsType = restrictionsType
        self.addinitionalInfromation = addinitionalInfromation
        self.restrictionPeriod = restrictionPeriod
        self.periodType = periodType
        self.dateFrom = dateFrom
        self.dateTo = dateTo
        self.restrictionPeriodType = restrictionPeriodType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case processParameters
        case counter
        case operation
        case value
        case restrictionsType
        case addinitionalInfromation
        case restrictionPeriod
        case periodType
        case dateFrom
        case dateTo
        case restrictionPeriodType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(processParameters, forKey: .processParameters)
        try container.encodeIfPresent(counter, forKey: .counter)
        try container.encodeIfPresent(operation, forKey: .operation)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(restrictionsType, forKey: .restrictionsType)
        try container.encodeIfPresent(addinitionalInfromation, forKey: .addinitionalInfromation)
        try container.encodeIfPresent(restrictionPeriod, forKey: .restrictionPeriod)
        try container.encodeIfPresent(periodType, forKey: .periodType)
        try container.encodeIfPresent(dateFrom, forKey: .dateFrom)
        try container.encodeIfPresent(dateTo, forKey: .dateTo)
        try container.encodeIfPresent(restrictionPeriodType, forKey: .restrictionPeriodType)
    }
}

