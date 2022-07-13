package com.example.demo.beans;

import com.example.demo.entities.Account;
import com.example.demo.entities.Order;
import com.example.demo.entities.Product;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CartModel {
	private Product product;
	private String name;
	private double price;
	private int quantity = 1;
	private Order order;
}
