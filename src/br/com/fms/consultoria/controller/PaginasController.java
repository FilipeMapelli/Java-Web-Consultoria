package br.com.fms.consultoria.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaginasController {

	@RequestMapping("home")
	public String index(Model model) {
		return "index";
	}

	@RequestMapping("cadastro")
	public String formCadastro() {
		return "formulario-cadastro";
	}

	@RequestMapping("sobre")
	public String sobre() {
		return "sobre";
	}

	@RequestMapping("consultoria")
	public String consultoria() {
		return "consultoria";
	}

	@RequestMapping("dev")
	public String desenvolvimento() {
		return "desenvolvimento";
	}

	@RequestMapping("contato")
	public String contato() {
		return "contato";
	}

	@RequestMapping("login")
	public String login() {
		return "login";
	}

	@RequestMapping("orcamento")
	public String orcamento() {
		return "orcamento";
	}

	@RequestMapping("minhaPagina")
	public String minhaPagina() {
		return "minha-pagina";
	}

}
