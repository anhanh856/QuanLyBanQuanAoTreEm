package com.example.demo.controller;

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
import com.example.demo.beans.CategoryModel;
import com.example.demo.entities.Account;
import com.example.demo.entities.Category;
import com.example.demo.repositories.AccountRepository;
import com.example.demo.repositories.CategoryRepository;

@Controller
@RequestMapping("/admin/categories")
public class CategoryController {
	@Autowired
	CategoryRepository categoRep;

	@GetMapping("index")
	public String index(Model model, @RequestParam(name = "page", defaultValue = "0") Integer page,
			@RequestParam(name = "size", defaultValue = "10") Integer size,
			@RequestParam(name = "field", defaultValue = ("name")) String field) {

		Pageable pageable = PageRequest.of(page, size, Sort.by(field));
		Page<Category> data = this.categoRep.findAll(pageable);
		model.addAttribute("data", data);
		String view = "/views/admin/categories/index.jsp";
		model.addAttribute("view", view);

		return "/layout";
		//return "admin/categories/index";

	}

	@GetMapping("create")
	public String create(Model model1, @ModelAttribute("category") CategoryModel model) {
		//return "admin/categories/create";
		String view = "/views/admin/categories/create.jsp";
		model1.addAttribute("view", view);

		return "/layout";

	}

	@PostMapping("store")
	public String store(Model model1, @Valid @ModelAttribute("category") CategoryModel catemodel, BindingResult result) {
		if(result.hasErrors()) {
			String view = "/views/admin/categories/create.jsp";
			model1.addAttribute("view", view);

			return "/layout";

		}
		Category ca = new Category();

		ca.setName(catemodel.getName());

		this.categoRep.save(ca);

		return "redirect:/admin/categories/index";
	}

	@GetMapping("delete/{id}")
	public String delete(@PathVariable("id") Category cate) {
		this.categoRep.delete(cate);
		return "redirect:/admin/categories/index";
	}

	@GetMapping("edit/{id}")
	public String edit(Model model, @PathVariable("id") Category cate) {
		model.addAttribute("cateEdit", cate);

		String view = "/views/admin/categories/edit.jsp";
		model.addAttribute("view", view);

		return "/layout";
	}

	@PostMapping("update/{id}")
	public String update(CategoryModel category, @PathVariable("id") Category item) {
		item.setName(category.getName());
		categoRep.save(item);
		return "redirect:/admin/categories/index";
	}

}
