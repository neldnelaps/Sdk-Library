//
// UserGroupAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class UserGroupAPI {

    /**
     Возвращает информацию по картам клиентов, счета которых объединены в группу.
     
     - parameter groupId: (path) Внутренний идентификатор группы. 
     - parameter cardShowMode: (query) Фильтр отображения карт (All — все карты, в т. ч. удаленные, NotDeleted — все неудаленные карты). (optional)
     - parameter personIdToExclude: (query) Внутренний идентификатор клиента, карты которого не отображать. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func userGroupGetGroupCardsInfo(groupId: Int, cardShowMode: GroupCardShowMode? = nil, personIdToExclude: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfSystemApiCardInfoModel?, _ error: Error?) -> Void)) -> RequestTask {
        return userGroupGetGroupCardsInfoWithRequestBuilder(groupId: groupId, cardShowMode: cardShowMode, personIdToExclude: personIdToExclude).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает информацию по картам клиентов, счета которых объединены в группу.
     - GET /v1.2/UserGroups/{groupId}/Cards
     - parameter groupId: (path) Внутренний идентификатор группы. 
     - parameter cardShowMode: (query) Фильтр отображения карт (All — все карты, в т. ч. удаленные, NotDeleted — все неудаленные карты). (optional)
     - parameter personIdToExclude: (query) Внутренний идентификатор клиента, карты которого не отображать. (optional)
     - returns: RequestBuilder<ResultModelOfListOfSystemApiCardInfoModel> 
     */
    open class func userGroupGetGroupCardsInfoWithRequestBuilder(groupId: Int, cardShowMode: GroupCardShowMode? = nil, personIdToExclude: Int? = nil) -> RequestBuilder<ResultModelOfListOfSystemApiCardInfoModel> {
        var localVariablePath = "/v1.2/UserGroups/{groupId}/Cards"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "cardShowMode": cardShowMode?.encodeToJSON(),
            "personIdToExclude": personIdToExclude?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfSystemApiCardInfoModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает список клиентов, счета которых объединены в группу.
     
     - parameter groupId: (path) Внутренний идентификатор группы. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func userGroupGetGroupMembers(groupId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPersonsGroupInfoModel?, _ error: Error?) -> Void)) -> RequestTask {
        return userGroupGetGroupMembersWithRequestBuilder(groupId: groupId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает список клиентов, счета которых объединены в группу.
     - GET /v1.2/UserGroups/{groupId}
     - parameter groupId: (path) Внутренний идентификатор группы. 
     - returns: RequestBuilder<ResultModelOfPersonsGroupInfoModel> 
     */
    open class func userGroupGetGroupMembersWithRequestBuilder(groupId: Int) -> RequestBuilder<ResultModelOfPersonsGroupInfoModel> {
        var localVariablePath = "/v1.2/UserGroups/{groupId}"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPersonsGroupInfoModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает информацию о клиентах группы по их атрибутам.
     
     - parameter filter: (query) Модель запроса. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func userGroupSearchPersonsByAttributes(filter: SearchByAttributesModel, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfPersonsGroupInfoModel?, _ error: Error?) -> Void)) -> RequestTask {
        return userGroupSearchPersonsByAttributesWithRequestBuilder(filter: filter).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает информацию о клиентах группы по их атрибутам.
     - POST /v1.2/UserGroups/SearchByAttributes
     - parameter filter: (query) Модель запроса. 
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfPersonsGroupInfoModel> 
     */
    open class func userGroupSearchPersonsByAttributesWithRequestBuilder(filter: SearchByAttributesModel) -> RequestBuilder<ResultModelOfPagedViewModelOfPersonsGroupInfoModel> {
        let localVariablePath = "/v1.2/UserGroups/SearchByAttributes"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter": filter.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfPersonsGroupInfoModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}