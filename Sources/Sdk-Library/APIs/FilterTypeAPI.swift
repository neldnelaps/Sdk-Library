//
// FilterTypeAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class FilterTypeAPI {

    /**
     Удалить тип фильтра.
     
     - parameter id: (path) Идентификатор типа фильтра. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func filterTypeDeleteFilterType(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return filterTypeDeleteFilterTypeWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Удалить тип фильтра.
     - POST /v1.2/filterTypes/{id}/Delete
     - parameter id: (path) Идентификатор типа фильтра. 
     - returns: RequestBuilder<ResultModel> 
     */
    open class func filterTypeDeleteFilterTypeWithRequestBuilder(id: Int) -> RequestBuilder<ResultModel> {
        var localVariablePath = "/v1.2/filterTypes/{id}/Delete"
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

        let localVariableRequestBuilder: RequestBuilder<ResultModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает доступные типы фильтров.
     
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - parameter filterSubstring: (query) Подстрока для поиска. (optional)
     - parameter filterShowMode: (query) Режим отображения архивных типов фильтров. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func filterTypeGetFilterTypes(from: Int? = nil, count: Int? = nil, filterSubstring: String? = nil, filterShowMode: ArchivedState? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfFilterTypeModel?, _ error: Error?) -> Void)) -> RequestTask {
        return filterTypeGetFilterTypesWithRequestBuilder(from: from, count: count, filterSubstring: filterSubstring, filterShowMode: filterShowMode).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает доступные типы фильтров.
     - GET /v1.2/filterTypes
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - parameter filterSubstring: (query) Подстрока для поиска. (optional)
     - parameter filterShowMode: (query) Режим отображения архивных типов фильтров. (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfFilterTypeModel> 
     */
    open class func filterTypeGetFilterTypesWithRequestBuilder(from: Int? = nil, count: Int? = nil, filterSubstring: String? = nil, filterShowMode: ArchivedState? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfFilterTypeModel> {
        let localVariablePath = "/v1.2/filterTypes"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "from": from?.encodeToJSON(),
            "count": count?.encodeToJSON(),
            "filter.substring": filterSubstring?.encodeToJSON(),
            "filter.showMode": filterShowMode?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfFilterTypeModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Восстановить тип фильтра.
     
     - parameter id: (path) Идентификатор типа фильтра. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func filterTypeRestoreFilterType(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return filterTypeRestoreFilterTypeWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Восстановить тип фильтра.
     - POST /v1.2/filterTypes/{id}/Restore
     - parameter id: (path) Идентификатор типа фильтра. 
     - returns: RequestBuilder<ResultModel> 
     */
    open class func filterTypeRestoreFilterTypeWithRequestBuilder(id: Int) -> RequestBuilder<ResultModel> {
        var localVariablePath = "/v1.2/filterTypes/{id}/Restore"
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

        let localVariableRequestBuilder: RequestBuilder<ResultModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}