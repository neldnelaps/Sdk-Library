//
// LoyaltyProgramAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class LoyaltyProgramAPI {

    /**
     Добавить партнёра в программу лояльности.
     
     - parameter id: (path) Идентификатор программы лояльности. 
     - parameter partnerId: (path) Идентификатор партнёра. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func loyaltyProgramAddPartner(id: Int, partnerId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return loyaltyProgramAddPartnerWithRequestBuilder(id: id, partnerId: partnerId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Добавить партнёра в программу лояльности.
     - PUT /v1.2/LoyaltyPrograms/{id}/Partners/{partnerId}
     - parameter id: (path) Идентификатор программы лояльности. 
     - parameter partnerId: (path) Идентификатор партнёра. 
     - returns: RequestBuilder<ResultModel> 
     */
    open class func loyaltyProgramAddPartnerWithRequestBuilder(id: Int, partnerId: Int) -> RequestBuilder<ResultModel> {
        var localVariablePath = "/v1.2/LoyaltyPrograms/{id}/Partners/{partnerId}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let partnerIdPreEscape = "\(APIHelper.mapValueToPathItem(partnerId))"
        let partnerIdPostEscape = partnerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{partnerId}", with: partnerIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить список программ лояльности.
     
     - parameter filterFrom: (query) С какого элемента брать. (optional)
     - parameter filterCount: (query) Сколько элементов брать. (optional)
     - parameter filterPartnerIds: (query) Список Id партнёров. (optional)
     - parameter filterName: (query) Подстрока для фильтрации по имени. (optional)
     - parameter filterSortingIds: (query) Список идентификаторов для первоочередного выбора. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func loyaltyProgramGet(filterFrom: Int? = nil, filterCount: Int? = nil, filterPartnerIds: [Int]? = nil, filterName: String? = nil, filterSortingIds: [Int]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfLoyaltyProgramModel?, _ error: Error?) -> Void)) -> RequestTask {
        return loyaltyProgramGetWithRequestBuilder(filterFrom: filterFrom, filterCount: filterCount, filterPartnerIds: filterPartnerIds, filterName: filterName, filterSortingIds: filterSortingIds).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить список программ лояльности.
     - GET /v1.2/LoyaltyPrograms
     - parameter filterFrom: (query) С какого элемента брать. (optional)
     - parameter filterCount: (query) Сколько элементов брать. (optional)
     - parameter filterPartnerIds: (query) Список Id партнёров. (optional)
     - parameter filterName: (query) Подстрока для фильтрации по имени. (optional)
     - parameter filterSortingIds: (query) Список идентификаторов для первоочередного выбора. (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfLoyaltyProgramModel> 
     */
    open class func loyaltyProgramGetWithRequestBuilder(filterFrom: Int? = nil, filterCount: Int? = nil, filterPartnerIds: [Int]? = nil, filterName: String? = nil, filterSortingIds: [Int]? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfLoyaltyProgramModel> {
        let localVariablePath = "/v1.2/LoyaltyPrograms"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter.from": filterFrom?.encodeToJSON(),
            "filter.count": filterCount?.encodeToJSON(),
            "filter.partnerIds": filterPartnerIds?.encodeToJSON(),
            "filter.name": filterName?.encodeToJSON(),
            "filter.sortingIds": filterSortingIds?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfLoyaltyProgramModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить программу лояльности по системному идентификатору.
     
     - parameter id: (path) Идентификатор программы лояльности. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func loyaltyProgramGetLoyaltyProgramsById(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfLoyaltyProgramModel?, _ error: Error?) -> Void)) -> RequestTask {
        return loyaltyProgramGetLoyaltyProgramsByIdWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить программу лояльности по системному идентификатору.
     - GET /v1.2/LoyaltyPrograms/{id}
     - parameter id: (path) Идентификатор программы лояльности. 
     - returns: RequestBuilder<ResultModelOfLoyaltyProgramModel> 
     */
    open class func loyaltyProgramGetLoyaltyProgramsByIdWithRequestBuilder(id: Int) -> RequestBuilder<ResultModelOfLoyaltyProgramModel> {
        var localVariablePath = "/v1.2/LoyaltyPrograms/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfLoyaltyProgramModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить список партнёров программы лояльности.
     
     - parameter id: (path) Идентификатор программы лояльности. 
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func loyaltyProgramGetPartners(id: Int, from: Int? = nil, count: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfPartnerModel?, _ error: Error?) -> Void)) -> RequestTask {
        return loyaltyProgramGetPartnersWithRequestBuilder(id: id, from: from, count: count).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить список партнёров программы лояльности.
     - GET /v1.2/LoyaltyPrograms/{id}/Partners
     - parameter id: (path) Идентификатор программы лояльности. 
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfPartnerModel> 
     */
    open class func loyaltyProgramGetPartnersWithRequestBuilder(id: Int, from: Int? = nil, count: Int? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfPartnerModel> {
        var localVariablePath = "/v1.2/LoyaltyPrograms/{id}/Partners"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
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

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfPartnerModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}