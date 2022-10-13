//
// CounterValueAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CounterValueAPI {

    /**
     Возвращает список доступных значений счетчика.
     
     - parameter counterId: (path) Внутренний идентификатор счетчика. 
     - parameter filterFrom: (query) Начало выборки. (optional)
     - parameter filterCount: (query) Количество. (optional)
     - parameter filterPersonId: (query) Идентификатор пользователя. (optional)
     - parameter filterAccountGroupId: (query) Идентификатор группы счетов. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func counterValueGetCounterValues(counterId: Int, filterFrom: Int? = nil, filterCount: Int? = nil, filterPersonId: Int? = nil, filterAccountGroupId: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfCounterValueBaseViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return counterValueGetCounterValuesWithRequestBuilder(counterId: counterId, filterFrom: filterFrom, filterCount: filterCount, filterPersonId: filterPersonId, filterAccountGroupId: filterAccountGroupId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает список доступных значений счетчика.
     - GET /v1.2/counters/{counterId}/values
     - parameter counterId: (path) Внутренний идентификатор счетчика. 
     - parameter filterFrom: (query) Начало выборки. (optional)
     - parameter filterCount: (query) Количество. (optional)
     - parameter filterPersonId: (query) Идентификатор пользователя. (optional)
     - parameter filterAccountGroupId: (query) Идентификатор группы счетов. (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfCounterValueBaseViewModel> 
     */
    open class func counterValueGetCounterValuesWithRequestBuilder(counterId: Int, filterFrom: Int? = nil, filterCount: Int? = nil, filterPersonId: Int? = nil, filterAccountGroupId: Int? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfCounterValueBaseViewModel> {
        var localVariablePath = "/v1.2/counters/{counterId}/values"
        let counterIdPreEscape = "\(APIHelper.mapValueToPathItem(counterId))"
        let counterIdPostEscape = counterIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{counterId}", with: counterIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter.from": filterFrom?.encodeToJSON(),
            "filter.count": filterCount?.encodeToJSON(),
            "filter.personId": filterPersonId?.encodeToJSON(),
            "filter.accountGroupId": filterAccountGroupId?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfCounterValueBaseViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}