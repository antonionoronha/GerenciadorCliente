package com.cliente;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ClienteController {

	@Autowired
	private ClienteService service;
	
	@RequestMapping("/")
	public ModelAndView home()
	{
		ModelAndView mav = new ModelAndView("index");		
		List<Cliente> listCliente = service.listAll();		
		mav.addObject("listCliente", listCliente);
		return mav;
	}
	
	@RequestMapping("/novo")
	public String newClientForm(Map<String, Object> model)
	{
		
		model.put("cliente", new Cliente());		
		return "new_client";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveClient(@ModelAttribute("cliente") Cliente cliente)
	{
		service.save(cliente);		
		return "redirect:/";
	}
	
	@RequestMapping("/edit")
	public ModelAndView editClientForm(@RequestParam long id)
	{
		
		ModelAndView mav = new ModelAndView("edit_client");
		Cliente cliente = service.get(id);
		mav.addObject("cliente",cliente);		
		return mav;
		
	}
	
	@RequestMapping("/delete")
	public String deleteClient(@RequestParam long id)
	{
		
		service.delete(id);		
		return "redirect:/";
		
	}
	
	@RequestMapping("/search")
	public ModelAndView search(@RequestParam String keyword)
	{
	
		ModelAndView mav = new ModelAndView("search");		
		List<Cliente> result = service.search(keyword);		
		mav.addObject("result",result);		
		return mav;
		
	}
	
}
