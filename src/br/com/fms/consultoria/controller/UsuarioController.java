package br.com.fms.consultoria.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.fms.consultoria.dao.UsuarioDao;
import br.com.fms.consultoria.modelo.Usuario;

@Controller
public class UsuarioController {

	@Autowired
	private UsuarioDao dao;

	@RequestMapping("mostraUsuario")
	public String mostraUsuario() {
		return "mostra-usuario";
	}

	@RequestMapping("editar")
	public String editar(Usuario usuario, HttpSession session) {
		dao.editar(usuario);
		session.setAttribute("usuarioLogado", dao.buscar(usuario.getId()));
		return "redirect: minhaPagina";
	}

	@RequestMapping("efetuaCadastro")
	public String cadastro(Usuario usuario) {
		dao.salvar(usuario);
		return "redirect: cadastroRealizado";
	}

	@RequestMapping("cadastroRealizado")
	public String mensagem(Model model) {
		model.addAttribute("sucesso", "sucesso");
		return "login";
	}

}
