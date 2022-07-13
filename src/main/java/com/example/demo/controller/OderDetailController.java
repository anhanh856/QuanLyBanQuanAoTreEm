package com.example.demo.controller;

/*
 * import java.util.List;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.GetMapping; import
 * org.springframework.web.bind.annotation.ModelAttribute; import
 * org.springframework.web.bind.annotation.RequestMapping;
 * 
 * import com.example.demo.entities.OrderDetail; import
 * com.example.demo.entities.Product; import
 * com.example.demo.repositories.Cardrepositories;
 * 
 * @Controller
 * 
 * @RequestMapping("/cart")
 * 
 * public class CartController {
 * 
 * @Autowired Cardrepositories cartRep;
 * 
 * @GetMapping("cartItem")
 * 
 * public String viewCart(Model model) {
 * 
 * List<OrderDetail> listOrDet = this.cartRep.findAll();
 * model.addAttribute("listOrDet", listOrDet); String view =
 * "/views/cartItem.jsp"; model.addAttribute("view", view); return "/layout"; }
 * }
 */
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.beans.AccountModel;
import com.example.demo.beans.CartModel;
import com.example.demo.entities.Category;
import com.example.demo.entities.Order;
import com.example.demo.entities.OrderDetail;
import com.example.demo.entities.Product;
import com.example.demo.repositories.CategoryRepository;
import com.example.demo.repositories.OrderDetailRepository;
import com.example.demo.repositories.CardRepository;
import com.example.demo.repositories.OrderRepository;
import com.example.demo.repositories.ProductRepository;

@Controller
@RequestMapping("/admin/order-details")
public class OderDetailController {
	@Autowired
	private OrderDetailRepository orderdetailsrepositories;
	@Autowired
	private OrderRepository orderrepositories;
	@Autowired
	private ProductRepository prdrepositories;

	@GetMapping("/index")
	public String index(Model model, @RequestParam(name = "page", defaultValue = ("0")) Integer page,
			@RequestParam(name = "size", defaultValue = ("10")) Integer size,
			@RequestParam(name = "field", defaultValue = ("id")) String field) {

		Pageable pageable = PageRequest.of(page, size, Sort.by(field));
		Page<OrderDetail> orderdetails = this.orderdetailsrepositories.findAll(pageable);
		model.addAttribute("orderdetails", orderdetails);

		String view = "/views/admin/orderDetails/index.jsp";
		model.addAttribute("view", view);
		model.addAttribute("khoangTrang", " ");

		return "/layout";
	}

	@GetMapping("create")
	public String create(Model model, @ModelAttribute("ordCreate") CartModel cartCreate) {

		List<Product> listPrd = this.prdrepositories.findAll();
		model.addAttribute("listPrd", listPrd);

		List<Order> listOrder = this.orderrepositories.findAll();
		model.addAttribute("listOrder", listOrder);

		model.addAttribute("khoangTrang", " ");

		String view = "/views/admin/orderDetails/create.jsp";
		model.addAttribute("view", view);

		return "/layout";
	}

	@PostMapping("store")
	public String store(Model model ,@Valid @ModelAttribute("ordCreate") CartModel cartModel, BindingResult result) {
		
		Order order = this.orderrepositories.getById(cartModel.getOrder().getId());
		OrderDetail ordDetail = new OrderDetail();
		

		ordDetail.setOrder(cartModel.getOrder());
		ordDetail.setProduct(cartModel.getProduct());
		ordDetail.setPrice(cartModel.getProduct().getPrice());
		ordDetail.setQuantity(1);

		this.orderdetailsrepositories.save(ordDetail);

		return "redirect:/admin/order-details/index";
	}

	@GetMapping("edit/{id}")
	public String edit(Model model, @PathVariable("id") OrderDetail orderDetailEdit) {
		List<Product> listPrd = this.prdrepositories.findAll();
		model.addAttribute("listPrd", listPrd);

		List<Order> listOrder = this.orderrepositories.findAll();
		model.addAttribute("listOrder", listOrder);

		model.addAttribute("orderDetailEdit", orderDetailEdit);
		model.addAttribute("khoangTrang", " ");
		String view = "/views/admin/orderDetails/edit.jsp";
		model.addAttribute("view", view);
		return "/layout";
	}

	@PostMapping("update/{id}")
	public String update(@PathVariable("id") OrderDetail orderDetail, CartModel cartModel) {
		Order order = this.orderrepositories.getById(cartModel.getOrder().getId());
		orderDetail.setOrder(cartModel.getOrder());
		orderDetail.setProduct(cartModel.getProduct());
		orderDetail.setPrice(cartModel.getProduct().getPrice());
		orderDetail.setQuantity(1);

		this.orderdetailsrepositories.save(orderDetail);

		return "redirect:/admin/order-details/index";
	}

	@GetMapping("delete/{id}")
	public String delete(@PathVariable("id") OrderDetail orderDetailDelete) {
		this.orderdetailsrepositories.delete(orderDetailDelete);
		return "redirect:/admin/order-details/index";
	}
}