package com.bitacademy.helpme.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("")
	public String index() {
		//System.out.println("이거샐행됨>?");
		return "/main/main";
	}
}
