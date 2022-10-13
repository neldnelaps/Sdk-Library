//
// CustomersImportAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CustomersImportAPI {

    /**
     Получить список операций по состоянию для группы операций в виде csv-файла.
     
     - parameter batchId: (path) Id группы операций. 
     - parameter deferredOperationState: (query) Состояние по которому будут отфильтрованы операции. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func customersImportExportOperationsCsv(batchId: Int, deferredOperationState: DeferredOperationState? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: String?, _ error: Error?) -> Void)) -> RequestTask {
        return customersImportExportOperationsCsvWithRequestBuilder(batchId: batchId, deferredOperationState: deferredOperationState).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить список операций по состоянию для группы операций в виде csv-файла.
     - GET /v1.2/customersImport/{batchId}/export
     - parameter batchId: (path) Id группы операций. 
     - parameter deferredOperationState: (query) Состояние по которому будут отфильтрованы операции. (optional)
     - returns: RequestBuilder<String> 
     */
    open class func customersImportExportOperationsCsvWithRequestBuilder(batchId: Int, deferredOperationState: DeferredOperationState? = nil) -> RequestBuilder<String> {
        var localVariablePath = "/v1.2/customersImport/{batchId}/export"
        let batchIdPreEscape = "\(APIHelper.mapValueToPathItem(batchId))"
        let batchIdPostEscape = batchIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{batchId}", with: batchIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "deferredOperationState": deferredOperationState?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить авторов для фильтра.
     
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - parameter name: (query) Имя. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func customersImportGetAvailableCreators(from: Int? = nil, count: Int? = nil, name: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfCreatorModel?, _ error: Error?) -> Void)) -> RequestTask {
        return customersImportGetAvailableCreatorsWithRequestBuilder(from: from, count: count, name: name).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить авторов для фильтра.
     - GET /v1.2/customersImport/creators
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - parameter name: (query) Имя. (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfCreatorModel> 
     */
    open class func customersImportGetAvailableCreatorsWithRequestBuilder(from: Int? = nil, count: Int? = nil, name: String? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfCreatorModel> {
        let localVariablePath = "/v1.2/customersImport/creators"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "from": from?.encodeToJSON(),
            "count": count?.encodeToJSON(),
            "name": name?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfCreatorModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить пакет по его id.
     
     - parameter batchId: (path) ID пакетной операции. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func customersImportGetBatch(batchId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfBatchCustomersImportModel?, _ error: Error?) -> Void)) -> RequestTask {
        return customersImportGetBatchWithRequestBuilder(batchId: batchId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить пакет по его id.
     - GET /v1.2/customersImport/{batchId}
     - parameter batchId: (path) ID пакетной операции. 
     - returns: RequestBuilder<ResultModelOfBatchCustomersImportModel> 
     */
    open class func customersImportGetBatchWithRequestBuilder(batchId: Int) -> RequestBuilder<ResultModelOfBatchCustomersImportModel> {
        var localVariablePath = "/v1.2/customersImport/{batchId}"
        let batchIdPreEscape = "\(APIHelper.mapValueToPathItem(batchId))"
        let batchIdPostEscape = batchIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{batchId}", with: batchIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfBatchCustomersImportModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить информацию о фоновой обработке операций для группы операций.
     
     - parameter batchId: (path) Id группы операций. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func customersImportGetBatchOperationsQueueProgress(batchId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfCustomersImportProgressInfoModel?, _ error: Error?) -> Void)) -> RequestTask {
        return customersImportGetBatchOperationsQueueProgressWithRequestBuilder(batchId: batchId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить информацию о фоновой обработке операций для группы операций.
     - GET /v1.2/customersImport/{batchId}/progress
     - parameter batchId: (path) Id группы операций. 
     - returns: RequestBuilder<ResultModelOfCustomersImportProgressInfoModel> 
     */
    open class func customersImportGetBatchOperationsQueueProgressWithRequestBuilder(batchId: Int) -> RequestBuilder<ResultModelOfCustomersImportProgressInfoModel> {
        var localVariablePath = "/v1.2/customersImport/{batchId}/progress"
        let batchIdPreEscape = "\(APIHelper.mapValueToPathItem(batchId))"
        let batchIdPostEscape = batchIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{batchId}", with: batchIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfCustomersImportProgressInfoModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить историю.
     
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - parameter filterFromDate: (query) Начало периода. (optional)
     - parameter filterToDate: (query) Конец периода. (optional)
     - parameter filterState: (query) Состояние операции. (optional)
     - parameter filterImportIdentifierType: (query) Тип идентификатора по которому импортируются клиенты. (optional)
     - parameter filterCreatorGetAll: (query) Получить записи по всем авторам. (optional)
     - parameter filterCreatorCreatorId: (query) Идентификатор автора. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func customersImportGetHistory(from: Int? = nil, count: Int? = nil, filterFromDate: String? = nil, filterToDate: String? = nil, filterState: BatchState? = nil, filterImportIdentifierType: IdentifierType? = nil, filterCreatorGetAll: Bool? = nil, filterCreatorCreatorId: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfBatchCustomersImportModel?, _ error: Error?) -> Void)) -> RequestTask {
        return customersImportGetHistoryWithRequestBuilder(from: from, count: count, filterFromDate: filterFromDate, filterToDate: filterToDate, filterState: filterState, filterImportIdentifierType: filterImportIdentifierType, filterCreatorGetAll: filterCreatorGetAll, filterCreatorCreatorId: filterCreatorCreatorId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить историю.
     - GET /v1.2/customersImport
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - parameter filterFromDate: (query) Начало периода. (optional)
     - parameter filterToDate: (query) Конец периода. (optional)
     - parameter filterState: (query) Состояние операции. (optional)
     - parameter filterImportIdentifierType: (query) Тип идентификатора по которому импортируются клиенты. (optional)
     - parameter filterCreatorGetAll: (query) Получить записи по всем авторам. (optional)
     - parameter filterCreatorCreatorId: (query) Идентификатор автора. (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfBatchCustomersImportModel> 
     */
    open class func customersImportGetHistoryWithRequestBuilder(from: Int? = nil, count: Int? = nil, filterFromDate: String? = nil, filterToDate: String? = nil, filterState: BatchState? = nil, filterImportIdentifierType: IdentifierType? = nil, filterCreatorGetAll: Bool? = nil, filterCreatorCreatorId: Int? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfBatchCustomersImportModel> {
        let localVariablePath = "/v1.2/customersImport"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "from": from?.encodeToJSON(),
            "count": count?.encodeToJSON(),
            "filter.fromDate": filterFromDate?.encodeToJSON(),
            "filter.toDate": filterToDate?.encodeToJSON(),
            "filter.state": filterState?.encodeToJSON(),
            "filter.importIdentifierType": filterImportIdentifierType?.encodeToJSON(),
            "filter.creator.getAll": filterCreatorGetAll?.encodeToJSON(),
            "filter.creator.creatorId": filterCreatorCreatorId?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfBatchCustomersImportModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить список операций по состоянию для группы операций.
     
     - parameter batchId: (path) Id группы операций. 
     - parameter deferredOperationState: (query) Состояние по которому будут отфильтрованы операции. 
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func customersImportGetOperations(batchId: Int, deferredOperationState: DeferredOperationState, from: Int? = nil, count: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfOperationCustomersImportModel?, _ error: Error?) -> Void)) -> RequestTask {
        return customersImportGetOperationsWithRequestBuilder(batchId: batchId, deferredOperationState: deferredOperationState, from: from, count: count).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить список операций по состоянию для группы операций.
     - GET /v1.2/customersImport/{batchId}/operations
     - parameter batchId: (path) Id группы операций. 
     - parameter deferredOperationState: (query) Состояние по которому будут отфильтрованы операции. 
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfOperationCustomersImportModel> 
     */
    open class func customersImportGetOperationsWithRequestBuilder(batchId: Int, deferredOperationState: DeferredOperationState, from: Int? = nil, count: Int? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfOperationCustomersImportModel> {
        var localVariablePath = "/v1.2/customersImport/{batchId}/operations"
        let batchIdPreEscape = "\(APIHelper.mapValueToPathItem(batchId))"
        let batchIdPostEscape = batchIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{batchId}", with: batchIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "deferredOperationState": deferredOperationState.encodeToJSON(),
            "from": from?.encodeToJSON(),
            "count": count?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfOperationCustomersImportModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}