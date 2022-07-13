package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class HomeController {
	@GetMapping("/home")
	public String home(Model model ){
		String view = "/views/sp/SanPham.jsp";
		model.addAttribute("view", view);
		return "/layout";
	}

}
