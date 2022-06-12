package com.example.omikuji.Controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/omikuji")
public class OmikujiController {
	
	@RequestMapping("")
	public String index() {
		return "form.jsp";
	}
	
	@RequestMapping(value="/submitOmikuji", method=RequestMethod.POST)
	public String submitOmikuji(HttpSession session, @RequestParam("years") Integer years,
			@RequestParam("city") String city, @RequestParam("person") String person,
			@RequestParam("hobby") String hobby, @RequestParam("thing") String thing,
			@RequestParam("nice") String nice) {
		HashMap<String, String> formInput = new HashMap<String, String>();
		formInput.put("years", String.valueOf(years));
		formInput.put("city", city);
		formInput.put("person", person);
		formInput.put("hobby", hobby);
		formInput.put("thing", thing);
		formInput.put("nice", nice);
		
		session.setAttribute("form", formInput);
		return "redirect:/omikuji/show";
	}
	
	@RequestMapping("/show")
	public String show(HttpSession session, Model model) {
		if (session.getAttribute("form") != null) {
			model.addAttribute("omikuji", session.getAttribute("form"));
		}
		return "show.jsp";
	}
}
