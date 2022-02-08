//
//  OrdersService.swift
//  TinkoffInvestSDK
//
//  Created by Ewg on 08.02.2022.
//

import Foundation

import Combine
import GRPC
import CombineGRPC

public protocol OrdersService: AnyObject {

    func postOrder(request: PostOrderRequest) -> AnyPublisher<PostOrderResponse, RPCError>

    func getOrders(request: GetOrdersRequest) -> AnyPublisher<GetOrdersResponse, RPCError>

    func cancelOrders(request: CancelOrderRequest) -> AnyPublisher<CancelOrderResponse, RPCError>
}

final class GRPCOrdersService: BaseCombineGRPCService, OrdersService {

    // MARK: - Private

    private lazy var client = OrdersServiceClient(channel: channel)

    // MARK: - ordersService

    func postOrder(request: PostOrderRequest) -> AnyPublisher<PostOrderResponse, RPCError> {
        executor.call(client.postOrder)(request)
    }

    func getOrders(request: GetOrdersRequest) -> AnyPublisher<GetOrdersResponse, RPCError> {
        executor.call(client.getOrders)(request)
    }

    func cancelOrders(request: CancelOrderRequest) -> AnyPublisher<CancelOrderResponse, RPCError> {
        executor.call(client.cancelOrder)(request)
    }
}
