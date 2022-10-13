//
// TargetGroupSegmentFilterSetAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class TargetGroupSegmentFilterSetAPI {

    /**
     Запускает расчет набора фильтров целевой аудитории.
     
     - parameter targetGroupId: (path) Внутренний идентификатор целевой аудитории. 
     - parameter segmentId: (path) Внутренний идентификатор сегмента. 
     - parameter filterSetId: (path) Внутренний идентификатор набора фильтров. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func targetGroupSegmentFilterSetCalculateTargetGroupSegmentFilterSet(targetGroupId: Int, segmentId: Int, filterSetId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return targetGroupSegmentFilterSetCalculateTargetGroupSegmentFilterSetWithRequestBuilder(targetGroupId: targetGroupId, segmentId: segmentId, filterSetId: filterSetId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Запускает расчет набора фильтров целевой аудитории.
     - POST /v1.2/targetGroups/{targetGroupId}/segments/{segmentId}/filterSets/{filterSetId}/calculate
     - parameter targetGroupId: (path) Внутренний идентификатор целевой аудитории. 
     - parameter segmentId: (path) Внутренний идентификатор сегмента. 
     - parameter filterSetId: (path) Внутренний идентификатор набора фильтров. 
     - returns: RequestBuilder<ResultModel> 
     */
    open class func targetGroupSegmentFilterSetCalculateTargetGroupSegmentFilterSetWithRequestBuilder(targetGroupId: Int, segmentId: Int, filterSetId: Int) -> RequestBuilder<ResultModel> {
        var localVariablePath = "/v1.2/targetGroups/{targetGroupId}/segments/{segmentId}/filterSets/{filterSetId}/calculate"
        let targetGroupIdPreEscape = "\(APIHelper.mapValueToPathItem(targetGroupId))"
        let targetGroupIdPostEscape = targetGroupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{targetGroupId}", with: targetGroupIdPostEscape, options: .literal, range: nil)
        let segmentIdPreEscape = "\(APIHelper.mapValueToPathItem(segmentId))"
        let segmentIdPostEscape = segmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{segmentId}", with: segmentIdPostEscape, options: .literal, range: nil)
        let filterSetIdPreEscape = "\(APIHelper.mapValueToPathItem(filterSetId))"
        let filterSetIdPostEscape = filterSetIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{filterSetId}", with: filterSetIdPostEscape, options: .literal, range: nil)
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
     Удаляет набор фильтров сегмента целевой аудитории.
     
     - parameter targetGroupId: (path) Внутренний идентификатор целевой аудитории. 
     - parameter segmentId: (path) Внутренний идентификатор сегмента целевой аудитории. 
     - parameter filterSetId: (path) Внутренний идентификатор набора фильтров. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func targetGroupSegmentFilterSetDeleteTargetGroupSegmentFilterSet(targetGroupId: Int, segmentId: Int, filterSetId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return targetGroupSegmentFilterSetDeleteTargetGroupSegmentFilterSetWithRequestBuilder(targetGroupId: targetGroupId, segmentId: segmentId, filterSetId: filterSetId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Удаляет набор фильтров сегмента целевой аудитории.
     - DELETE /v1.2/targetGroups/{targetGroupId}/segments/{segmentId}/filterSets/{filterSetId}
     - parameter targetGroupId: (path) Внутренний идентификатор целевой аудитории. 
     - parameter segmentId: (path) Внутренний идентификатор сегмента целевой аудитории. 
     - parameter filterSetId: (path) Внутренний идентификатор набора фильтров. 
     - returns: RequestBuilder<ResultModel> 
     */
    open class func targetGroupSegmentFilterSetDeleteTargetGroupSegmentFilterSetWithRequestBuilder(targetGroupId: Int, segmentId: Int, filterSetId: Int) -> RequestBuilder<ResultModel> {
        var localVariablePath = "/v1.2/targetGroups/{targetGroupId}/segments/{segmentId}/filterSets/{filterSetId}"
        let targetGroupIdPreEscape = "\(APIHelper.mapValueToPathItem(targetGroupId))"
        let targetGroupIdPostEscape = targetGroupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{targetGroupId}", with: targetGroupIdPostEscape, options: .literal, range: nil)
        let segmentIdPreEscape = "\(APIHelper.mapValueToPathItem(segmentId))"
        let segmentIdPostEscape = segmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{segmentId}", with: segmentIdPostEscape, options: .literal, range: nil)
        let filterSetIdPreEscape = "\(APIHelper.mapValueToPathItem(filterSetId))"
        let filterSetIdPostEscape = filterSetIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{filterSetId}", with: filterSetIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает набор фильтров сегмента целевой аудитории по его внутреннему идентификатору.
     
     - parameter targetGroupId: (path) Внутренний идентификатор целевой аудитории. 
     - parameter segmentId: (path) Внутренний идентификатор сегмента. 
     - parameter id: (path) Внутренний идентификатор набора фильтров. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func targetGroupSegmentFilterSetGetTargetGroupSegmentFilterSet(targetGroupId: Int, segmentId: Int, id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfTargetGroupSegmentFilterSetViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return targetGroupSegmentFilterSetGetTargetGroupSegmentFilterSetWithRequestBuilder(targetGroupId: targetGroupId, segmentId: segmentId, id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает набор фильтров сегмента целевой аудитории по его внутреннему идентификатору.
     - GET /v1.2/targetGroups/{targetGroupId}/segments/{segmentId}/filterSets/{id}
     - parameter targetGroupId: (path) Внутренний идентификатор целевой аудитории. 
     - parameter segmentId: (path) Внутренний идентификатор сегмента. 
     - parameter id: (path) Внутренний идентификатор набора фильтров. 
     - returns: RequestBuilder<ResultModelOfTargetGroupSegmentFilterSetViewModel> 
     */
    open class func targetGroupSegmentFilterSetGetTargetGroupSegmentFilterSetWithRequestBuilder(targetGroupId: Int, segmentId: Int, id: Int) -> RequestBuilder<ResultModelOfTargetGroupSegmentFilterSetViewModel> {
        var localVariablePath = "/v1.2/targetGroups/{targetGroupId}/segments/{segmentId}/filterSets/{id}"
        let targetGroupIdPreEscape = "\(APIHelper.mapValueToPathItem(targetGroupId))"
        let targetGroupIdPostEscape = targetGroupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{targetGroupId}", with: targetGroupIdPostEscape, options: .literal, range: nil)
        let segmentIdPreEscape = "\(APIHelper.mapValueToPathItem(segmentId))"
        let segmentIdPostEscape = segmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{segmentId}", with: segmentIdPostEscape, options: .literal, range: nil)
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

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfTargetGroupSegmentFilterSetViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает информацию о последнем расчете набора фильтров целевой аудитории.
     
     - parameter targetGroupId: (path) Внутренний идентификатор целевой аудитории. 
     - parameter segmentId: (path) Внутренний идентификатор сегмента. 
     - parameter filterSetId: (path) Внутренний идентификатор набора фильтров. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func targetGroupSegmentFilterSetGetTargetGroupSegmentFilterSetCalculationInfo(targetGroupId: Int, segmentId: Int, filterSetId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfCalculationModel?, _ error: Error?) -> Void)) -> RequestTask {
        return targetGroupSegmentFilterSetGetTargetGroupSegmentFilterSetCalculationInfoWithRequestBuilder(targetGroupId: targetGroupId, segmentId: segmentId, filterSetId: filterSetId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает информацию о последнем расчете набора фильтров целевой аудитории.
     - GET /v1.2/targetGroups/{targetGroupId}/segments/{segmentId}/filterSets/{filterSetId}/calculation
     - parameter targetGroupId: (path) Внутренний идентификатор целевой аудитории. 
     - parameter segmentId: (path) Внутренний идентификатор сегмента. 
     - parameter filterSetId: (path) Внутренний идентификатор набора фильтров. 
     - returns: RequestBuilder<ResultModelOfCalculationModel> 
     */
    open class func targetGroupSegmentFilterSetGetTargetGroupSegmentFilterSetCalculationInfoWithRequestBuilder(targetGroupId: Int, segmentId: Int, filterSetId: Int) -> RequestBuilder<ResultModelOfCalculationModel> {
        var localVariablePath = "/v1.2/targetGroups/{targetGroupId}/segments/{segmentId}/filterSets/{filterSetId}/calculation"
        let targetGroupIdPreEscape = "\(APIHelper.mapValueToPathItem(targetGroupId))"
        let targetGroupIdPostEscape = targetGroupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{targetGroupId}", with: targetGroupIdPostEscape, options: .literal, range: nil)
        let segmentIdPreEscape = "\(APIHelper.mapValueToPathItem(segmentId))"
        let segmentIdPostEscape = segmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{segmentId}", with: segmentIdPostEscape, options: .literal, range: nil)
        let filterSetIdPreEscape = "\(APIHelper.mapValueToPathItem(filterSetId))"
        let filterSetIdPostEscape = filterSetIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{filterSetId}", with: filterSetIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfCalculationModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает наборы фильтров сегмента целевой аудитории.
     
     - parameter targetGroupId: (path) Внутренний идентификатор целевой аудитории. 
     - parameter segmentId: (path) Внутренний идентификатор сегмента. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func targetGroupSegmentFilterSetGetTargetGroupSegmentFilterSets(targetGroupId: Int, segmentId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfTargetGroupSegmentFilterSetViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return targetGroupSegmentFilterSetGetTargetGroupSegmentFilterSetsWithRequestBuilder(targetGroupId: targetGroupId, segmentId: segmentId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает наборы фильтров сегмента целевой аудитории.
     - GET /v1.2/targetGroups/{targetGroupId}/segments/{segmentId}/filterSets
     - parameter targetGroupId: (path) Внутренний идентификатор целевой аудитории. 
     - parameter segmentId: (path) Внутренний идентификатор сегмента. 
     - returns: RequestBuilder<ResultModelOfListOfTargetGroupSegmentFilterSetViewModel> 
     */
    open class func targetGroupSegmentFilterSetGetTargetGroupSegmentFilterSetsWithRequestBuilder(targetGroupId: Int, segmentId: Int) -> RequestBuilder<ResultModelOfListOfTargetGroupSegmentFilterSetViewModel> {
        var localVariablePath = "/v1.2/targetGroups/{targetGroupId}/segments/{segmentId}/filterSets"
        let targetGroupIdPreEscape = "\(APIHelper.mapValueToPathItem(targetGroupId))"
        let targetGroupIdPostEscape = targetGroupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{targetGroupId}", with: targetGroupIdPostEscape, options: .literal, range: nil)
        let segmentIdPreEscape = "\(APIHelper.mapValueToPathItem(segmentId))"
        let segmentIdPostEscape = segmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{segmentId}", with: segmentIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfTargetGroupSegmentFilterSetViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}