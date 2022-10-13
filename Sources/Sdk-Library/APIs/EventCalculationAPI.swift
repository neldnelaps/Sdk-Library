//
// EventCalculationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class EventCalculationAPI {

    /**
     Возвращает информацию о расчёте по идентификатору.
     
     - parameter id: (path) Идентификатор расчёта. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func eventCalculationGetById(id: Int64, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfEventCalculationModel?, _ error: Error?) -> Void)) -> RequestTask {
        return eventCalculationGetByIdWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает информацию о расчёте по идентификатору.
     - GET /v1.2/EventCalculations/{id}
     - parameter id: (path) Идентификатор расчёта. 
     - returns: RequestBuilder<ResultModelOfEventCalculationModel> 
     */
    open class func eventCalculationGetByIdWithRequestBuilder(id: Int64) -> RequestBuilder<ResultModelOfEventCalculationModel> {
        var localVariablePath = "/v1.2/EventCalculations/{id}"
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

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfEventCalculationModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает список расчётов.
     
     - parameter filterFrom: (query) С какого элемента брать. (optional)
     - parameter filterCount: (query) Сколько элементов брать. (optional)
     - parameter filterCalculationKey: (query) Ключ расчёта. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func eventCalculationGetPagedList(filterFrom: Int? = nil, filterCount: Int? = nil, filterCalculationKey: Int64? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfEventCalculationModel?, _ error: Error?) -> Void)) -> RequestTask {
        return eventCalculationGetPagedListWithRequestBuilder(filterFrom: filterFrom, filterCount: filterCount, filterCalculationKey: filterCalculationKey).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает список расчётов.
     - GET /v1.2/EventCalculations
     - parameter filterFrom: (query) С какого элемента брать. (optional)
     - parameter filterCount: (query) Сколько элементов брать. (optional)
     - parameter filterCalculationKey: (query) Ключ расчёта. (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfEventCalculationModel> 
     */
    open class func eventCalculationGetPagedListWithRequestBuilder(filterFrom: Int? = nil, filterCount: Int? = nil, filterCalculationKey: Int64? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfEventCalculationModel> {
        let localVariablePath = "/v1.2/EventCalculations"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter.from": filterFrom?.encodeToJSON(),
            "filter.count": filterCount?.encodeToJSON(),
            "filter.calculationKey": filterCalculationKey?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfEventCalculationModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
