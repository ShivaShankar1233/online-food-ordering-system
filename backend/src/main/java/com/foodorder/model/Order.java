package com.foodorder.model;

import java.util.Objects;

public class Order {
    private String orderId;
    private String customerId;
    private String restaurantId;
    private List<String> itemIds;
    private String status;
    private String orderDate;

    public Order(String orderId, String customerId, String restaurantId, List<String> itemIds, String status, String orderDate) {
        this.orderId = orderId;
        this.customerId = customerId;
        this.restaurantId = restaurantId;
        this.itemIds = itemIds;
        this.status = status;
        this.orderDate = orderDate;
    }

    public String getOrderId() {
        return orderId;
    }

    public String getCustomerId() {
        return customerId;
    }

    public String getRestaurantId() {
        return restaurantId;
    }

    public List<String> getItemIds() {
        return itemIds;
    }

    public String getStatus() {
        return status;
    }

    public String getOrderDate() {
        return orderDate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Order)) return false;
        Order order = (Order) o;
        return Objects.equals(orderId, order.orderId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(orderId);
    }
}