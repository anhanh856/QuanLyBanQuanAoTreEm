package com.example.demo.repositories;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.beans.CartModel;
import com.example.demo.entities.OrderDetail;

public interface CardRepository extends JpaRepository<OrderDetail, Integer> {

	
	
}
