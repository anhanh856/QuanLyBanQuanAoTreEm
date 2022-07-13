/*
 * package com.example.demo.repositories;
 * 
 * import java.util.Collection; import java.util.HashMap; import java.util.Map;
 * 
 * import com.example.demo.beans.CartModel;
 * 
 * public class CartServiceImpl implements CardRepository{ Map<Integer,
 * CartModel> maps = new HashMap<>(); // giỏ hàng
 * 
 * @Override public void add(CartModel item) { CartModel cartModel =
 * maps.get(item.getProduct()); if(cartModel == null) {
 * maps.put(item.getProduct(), item);
 * 
 * 
 * 
 * }else { cartModel.setQuantity(cartModel.getQuantity() +1); } }
 * 
 * @Override public void remove(int id) { maps.remove(id); }
 * 
 * @Override public CartModel update(int proID, int qty) { CartModel cartModel =
 * maps.get(proID); cartModel.setQuantity(qty); return cartModel;
 * 
 * }
 * 
 * @Override public void clear() { maps.clear(); }
 * 
 * @Override public Collection<CartModel> getAllItems(){ return maps.values(); }
 * 
 * @Override public int getCount() { return maps.values().size();
 * 
 * }
 * 
 * @Override public double getAmount() { return
 * maps.values().stream().mapToDouble( item -> item.getQuantity() *
 * item.getPrice()).sum();
 * 
 * } }
 */