//
// CustomerBatchLinkAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CustomerBatchLinkAPI {

    /**
     Получить список объединений счетов клиентов.
     
     - parameter state: (query) Состояние. (optional)
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func customerBatchLinkGetBatches(state: BatchState? = nil, from: Int? = nil, count: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfBatchUploadModel?, _ error: Error?) -> Void)) -> RequestTask {
        return customerBatchLinkGetBatchesWithRequestBuilder(state: state, from: from, count: count).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить список объединений счетов клиентов.
     - GET /v1.2/customers/batchMerge
     - parameter state: (query) Состояние. (optional)
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfBatchUploadModel> 
     */
    open class func customerBatchLinkGetBatchesWithRequestBuilder(state: BatchState? = nil, from: Int? = nil, count: Int? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfBatchUploadModel> {
        let localVariablePath = "/v1.2/customers/batchMerge"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "state": state?.encodeToJSON(),
            "from": from?.encodeToJSON(),
            "count": count?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfBatchUploadModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить список операций объединений счетов клиентов, завершившихся ошибкой.
     
     - parameter id: (path) Id пакета. 
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func customerBatchLinkGetOperations(id: Int, from: Int? = nil, count: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfBatchUploadDataModel?, _ error: Error?) -> Void)) -> RequestTask {
        return customerBatchLinkGetOperationsWithRequestBuilder(id: id, from: from, count: count).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить список операций объединений счетов клиентов, завершившихся ошибкой.
     - GET /v1.2/customers/batchMerge/{id}/FailedOperations
     - parameter id: (path) Id пакета. 
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfBatchUploadDataModel> 
     */
    open class func customerBatchLinkGetOperationsWithRequestBuilder(id: Int, from: Int? = nil, count: Int? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfBatchUploadDataModel> {
        var localVariablePath = "/v1.2/customers/batchMerge/{id}/FailedOperations"
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

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfBatchUploadDataModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
