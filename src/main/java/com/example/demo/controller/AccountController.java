package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import com.example.demo.beans.CategoryModel;
import com.example.demo.entities.Account;
import com.example.demo.entities.Category;
import com.example.demo.repositories.AccountRepository;
import com.example.demo.until.EncryptUtil;

@Controller
@RequestMapping("/admin/accounts")
public class AccountController {
	@Autowired
	AccountRepository accountRepo;
	
	@GetMapping("create")
	public String create(Model model, @ModelAttribute("account") AccountModel accounts) {
		String view = "/views/admin/accounts/create.jsp";
		model.addAttribute("view", view);

		return "/layout";
		//return "admin/accounts/create";

	}

	@PostMapping("store")
	public String store(Model model, @Valid @ModelAttribute("account") AccountModel accountModel, BindingResult result) {
		if(result.hasErrors()) {
			String view = "/views/admin/accounts/create.jsp";
			model.addAttribute("view", view);

			return "/layout";
		}
		Account account = new Account();
		System.out.println("account: " + account.getEmail());
		account.setFullname(accountModel.getFullname());
		account.setEmail(accountModel.getEmail());
		account.setUsername(accountModel.getUsername());
		//account.setPassword(accountModel.getPassword());
		String encrypted = EncryptUtil.encrypt(accountModel.getPassword());
	
		account.setPassword(encrypted);
		account.setPhoto(accountModel.getPhoto());
		account.setAdmin(accountModel.getAdmin());
		account.setActivated(1);
		this.accountRepo.save(account);

		return "redirect:/admin/accounts/index";
	}

	@GetMapping("delete/{id}")
	public String delete(@PathVariable("id") Account account) {
		this.accountRepo.delete(account);
		return "redirect:/admin/accounts/index";
	}

	@GetMapping("edit/{id}")
	public String edit(Model model, @PathVariable("id") Account account) {
		model.addAttribute("accountEdit", account);
		String view = "/views/admin/accounts/edit.jsp";
		model.addAttribute("view", view);

		return "/layout";
		//return "/admin/accounts/edit";
	}

	@PostMapping("update/{id}")
	public String update(Model model, @Valid @ModelAttribute("accountEdit") AccountModel account, @PathVariable("id") Account item, BindingResult result) {
		if(result.hasErrors()) {
			String view = "/views/admin/accounts/edit.jsp";
			model.addAttribute("view", view);

			return "/layout";
		}
		item.setUsername(account.getUsername());
		item.setFullname(account.getFullname());
		item.setEmail(account.getEmail());
		item.setUsername(account.getUsername());
		item.setPassword(account.getPassword());
		item.setPhoto(account.getPhoto());
		item.setAdmin(account.getAdmin());
		
		this.accountRepo.save(item);
		return "redirect:/admin/accounts/index";
	}

	@GetMapping("index")
	public String index(Model model, @RequestParam(name = "page", defaultValue = "0") Integer page,
			@RequestParam(name = "size", defaultValue = "10") Integer size,
			@RequestParam(name = "field", defaultValue = ("username")) String field
			) {
				/*
				 * Sort sortByUsername = Sort.by(Direction.ASC, "username"); List<Account>
				 * listAccount = this.accountRepo.findAll(sortByUsername);
				 */
//		Account a = this.accountRepo.timTheoEmail("anhnv@fpt.edu.vn");
//		System.out.println(a.getFullname());
		Pageable pageable = PageRequest.of(page, size, Sort.by(field));
		Page<Account> data = this.accountRepo.findAll(pageable);
		model.addAttribute("data", data);
		//return "admin/accounts/index";
		String view = "/views/admin/accounts/index.jsp";
		model.addAttribute("view", view);

		return "/layout";
	}
}
