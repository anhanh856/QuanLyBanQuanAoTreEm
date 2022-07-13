package com.example.demo.controller;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
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
import com.example.demo.beans.ProductModel;
import com.example.demo.entities.Account;
import com.example.demo.entities.Category;
import com.example.demo.entities.Product;
import com.example.demo.repositories.AccountRepository;
import com.example.demo.repositories.CategoryRepository;
import com.example.demo.repositories.ProductRepository;
import com.mysql.fabric.xmlrpc.base.Data;

@Controller
@RequestMapping("/admin/products")
public class ProductController {

	@Autowired
	ProductRepository productRep;

	@Autowired
	CategoryRepository cateRep;
	@Autowired
	HttpSession session;

	@GetMapping("create")
	public String create(Model model, @ModelAttribute("product") ProductModel proModel) {

		List<Category> listCate = this.cateRep.findAll();
		model.addAttribute("listCate", listCate);
		//return "admin/products/create";
		String view = "/views/admin/products/create.jsp";
		model.addAttribute("view", view);

		return "/layout";

	}

	@PostMapping("store")
	public String store(Model model, @Valid @ModelAttribute("product") ProductModel proModel , BindingResult result ) {
		if(result.hasErrors()) {
			String view = "/views/admin/products/create.jsp";
			model.addAttribute("view", view);

			return "/layout";
		}
		java.util.Date dt = new java.util.Date();

		Category cate = this.cateRep.getById(proModel.getCategory().getId());

		Product product = new Product();

		product.setName(proModel.getName());
		product.setImage(proModel.getImage());
		//session.setAttribute("price", "Vui lòng nhập giá");
		product.setPrice(proModel.getPrice());
		
		/*
		 * int price = product.setPrice(proModel.getPrice()); if(price < 0) {
		 * session.setAttribute("price", "Vui lòng nhập số dương"); }
		 */
		product.setCreatedDate(dt);
		product.setAvailable(0);
		product.setCategory(cate);

		this.productRep.save(product);
		return "redirect:/admin/products/index";
	}

	@GetMapping("index")
	public String index(Model model, @RequestParam(name = "page", defaultValue = "0") Integer page,
			@RequestParam(name = "size", defaultValue = "5") Integer size,
			@RequestParam(name = "field", defaultValue = ("price")) String field) {
		/*
		 * Sort sortByPrice = Sort.by(Direction.ASC, "price"); List<Product> listproduct
		 * = this.productRep.findAll(sortByPrice);
		 */
		Pageable pageable = PageRequest.of(page, size, Sort.by(field));
		Page<Product> data = this.productRep.findAll(pageable);
		model.addAttribute("data", data);
		//return "admin/products/index";
		String view = "/views/admin/products/index.jsp";
		model.addAttribute("view", view);

		return "/layout";

	}

	@GetMapping("delete/{id}")
	public String delete(@PathVariable("id") Product product) {
		this.productRep.delete(product);
		return "redirect:/admin/products/index";
	}

	@GetMapping("edit/{id}")
	public String edit(Model model, @PathVariable("id") Product product) {
		List<Category> listCate = this.cateRep.findAll();
		model.addAttribute("listCate", listCate);

		model.addAttribute("productEdit", product);

		String view = "/views/admin/products/edit.jsp";
		model.addAttribute("view", view);

		return "/layout";
	}

	@PostMapping("update/{id}")
	public String update(ProductModel proModel, @PathVariable("id") Product item) {
		java.util.Date dt = new java.util.Date();
		Category cate = this.cateRep.getById(proModel.getCategory().getId());
		item.setName(proModel.getName());
		item.setImage(proModel.getImage());
		item.setPrice(proModel.getPrice());
		item.setCreatedDate(dt);
		item.setAvailable(0);
		item.setCategory(cate);
		this.productRep.save(item);
		return "redirect:/admin/products/index";
	}

}
