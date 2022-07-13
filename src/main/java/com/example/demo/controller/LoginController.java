package com.example.demo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.beans.LoginModel;
import com.example.demo.entities.Account;
import com.example.demo.repositories.AccountRepository;
import com.example.demo.until.EncryptUtil;



@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	AccountRepository accountRep;
	@Autowired
	HttpServletRequest req;
	@Autowired
	HttpServletResponse resp;
	
	@GetMapping("/login1")
	public String login1(Model model, @ModelAttribute("login") LoginModel loginModel) {
		

		return "/Login";
	}
	@PostMapping("/login")
	public String login(Model model, HttpSession session, LoginModel login) {

		System.out.println("Tài khoản: " + login.getEmail());
		System.out.println("Mật khẩu: " + login.getPassword());

		List<Account> listAccounts = this.accountRep.findAll();

		for (Account x : listAccounts) {
			if (x.getEmail().equals(login.getEmail()) && x.getPassword().equals(login.getPassword())) {
				session.setAttribute("userLogin", x);
				System.out.println("login thành công: " + x);
				
				return "redirect:/home";
			}
			
		}
		return "redirect:/login/login1";
	}
	@GetMapping("/Logout")
	public String Logout(Model model) throws IOException {
		HttpSession session = req.getSession();
		session.removeAttribute("userLogin");
		return "redirect:/home";
		
	}
	
}
