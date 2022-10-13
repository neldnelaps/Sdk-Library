//
// CommonLocationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CommonLocationAPI {

    /**
     Получить список городов.
     
     - parameter startWith: (query) Поисковая строка. (optional)
     - parameter count: (query) Кол-во выводимых элементов. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func commonLocationGetCities(startWith: String? = nil, count: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfString?, _ error: Error?) -> Void)) -> RequestTask {
        return commonLocationGetCitiesWithRequestBuilder(startWith: startWith, count: count).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить список городов.
     - GET /v1.2/Location/CitiesStartWith
     - parameter startWith: (query) Поисковая строка. (optional)
     - parameter count: (query) Кол-во выводимых элементов. (optional)
     - returns: RequestBuilder<ResultModelOfListOfString> 
     */
    open class func commonLocationGetCitiesWithRequestBuilder(startWith: String? = nil, count: Int? = nil) -> RequestBuilder<ResultModelOfListOfString> {
        let localVariablePath = "/v1.2/Location/CitiesStartWith"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "startWith": startWith?.encodeToJSON(),
            "count": count?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfString>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить список городов.
     
     - parameter regionId: (path) Id региона. 
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func commonLocationGetCitiesByRegionId(regionId: Int, from: Int? = nil, count: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfCityViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return commonLocationGetCitiesByRegionIdWithRequestBuilder(regionId: regionId, from: from, count: count).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить список городов.
     - GET /v1.2/Location/Region/{regionId}/Cities
     - parameter regionId: (path) Id региона. 
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfCityViewModel> 
     */
    open class func commonLocationGetCitiesByRegionIdWithRequestBuilder(regionId: Int, from: Int? = nil, count: Int? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfCityViewModel> {
        var localVariablePath = "/v1.2/Location/Region/{regionId}/Cities"
        let regionIdPreEscape = "\(APIHelper.mapValueToPathItem(regionId))"
        let regionIdPostEscape = regionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{regionId}", with: regionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "from": from?.encodeToJSON(),
            "count": count?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfCityViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить список стран.
     
     - parameter filterFrom: (query) Начало выборки. (optional)
     - parameter filterCount: (query) Количество. (optional)
     - parameter filterStartWith: (query) Поисковая строка. (optional)
     - parameter filterSortingIds: (query) Идентификаторы стран, которые будут выбираться первыми. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func commonLocationGetCountries(filterFrom: Int? = nil, filterCount: Int? = nil, filterStartWith: String? = nil, filterSortingIds: [Int]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfCountryViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return commonLocationGetCountriesWithRequestBuilder(filterFrom: filterFrom, filterCount: filterCount, filterStartWith: filterStartWith, filterSortingIds: filterSortingIds).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить список стран.
     - GET /v1.2/Location/Countries
     - parameter filterFrom: (query) Начало выборки. (optional)
     - parameter filterCount: (query) Количество. (optional)
     - parameter filterStartWith: (query) Поисковая строка. (optional)
     - parameter filterSortingIds: (query) Идентификаторы стран, которые будут выбираться первыми. (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfCountryViewModel> 
     */
    open class func commonLocationGetCountriesWithRequestBuilder(filterFrom: Int? = nil, filterCount: Int? = nil, filterStartWith: String? = nil, filterSortingIds: [Int]? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfCountryViewModel> {
        let localVariablePath = "/v1.2/Location/Countries"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter.from": filterFrom?.encodeToJSON(),
            "filter.count": filterCount?.encodeToJSON(),
            "filter.startWith": filterStartWith?.encodeToJSON(),
            "filter.sortingIds": filterSortingIds?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfCountryViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить список домов.
     
     - parameter startWith: (query) С какого элемента выводить. (optional)
     - parameter count: (query) Кол-во выводимых элементов. (optional)
     - parameter street: (query) Фильтр по улице. (optional)
     - parameter city: (query) Название города. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func commonLocationGetHouses(startWith: String? = nil, count: Int? = nil, street: String? = nil, city: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfString?, _ error: Error?) -> Void)) -> RequestTask {
        return commonLocationGetHousesWithRequestBuilder(startWith: startWith, count: count, street: street, city: city).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить список домов.
     - GET /v1.2/Location/Houses
     - parameter startWith: (query) С какого элемента выводить. (optional)
     - parameter count: (query) Кол-во выводимых элементов. (optional)
     - parameter street: (query) Фильтр по улице. (optional)
     - parameter city: (query) Название города. (optional)
     - returns: RequestBuilder<ResultModelOfListOfString> 
     */
    open class func commonLocationGetHousesWithRequestBuilder(startWith: String? = nil, count: Int? = nil, street: String? = nil, city: String? = nil) -> RequestBuilder<ResultModelOfListOfString> {
        let localVariablePath = "/v1.2/Location/Houses"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "startWith": startWith?.encodeToJSON(),
            "count": count?.encodeToJSON(),
            "street": street?.encodeToJSON(),
            "city": city?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfString>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить список регионов.
     
     - parameter startWith: (query) Поисковая строка. (optional)
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func commonLocationGetRegions(startWith: String? = nil, from: Int? = nil, count: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfRegionViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return commonLocationGetRegionsWithRequestBuilder(startWith: startWith, from: from, count: count).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить список регионов.
     - GET /v1.2/Location/Regions
     - parameter startWith: (query) Поисковая строка. (optional)
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfRegionViewModel> 
     */
    open class func commonLocationGetRegionsWithRequestBuilder(startWith: String? = nil, from: Int? = nil, count: Int? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfRegionViewModel> {
        let localVariablePath = "/v1.2/Location/Regions"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "startWith": startWith?.encodeToJSON(),
            "from": from?.encodeToJSON(),
            "count": count?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfRegionViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить список улиц.
     
     - parameter startWith: (query) С какого элемента выводить. (optional)
     - parameter count: (query) Кол-во выводимых элементов. (optional)
     - parameter city: (query) Фильтр по городу. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func commonLocationGetStreets(startWith: String? = nil, count: Int? = nil, city: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfString?, _ error: Error?) -> Void)) -> RequestTask {
        return commonLocationGetStreetsWithRequestBuilder(startWith: startWith, count: count, city: city).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить список улиц.
     - GET /v1.2/Location/Streets
     - parameter startWith: (query) С какого элемента выводить. (optional)
     - parameter count: (query) Кол-во выводимых элементов. (optional)
     - parameter city: (query) Фильтр по городу. (optional)
     - returns: RequestBuilder<ResultModelOfListOfString> 
     */
    open class func commonLocationGetStreetsWithRequestBuilder(startWith: String? = nil, count: Int? = nil, city: String? = nil) -> RequestBuilder<ResultModelOfListOfString> {
        let localVariablePath = "/v1.2/Location/Streets"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "startWith": startWith?.encodeToJSON(),
            "count": count?.encodeToJSON(),
            "city": city?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfString>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
