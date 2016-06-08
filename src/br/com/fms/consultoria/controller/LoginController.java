package br.com.fms.consultoria.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.fms.consultoria.dao.OrcamentoDao;
import br.com.fms.consultoria.dao.UsuarioDao;
import br.com.fms.consultoria.modelo.Usuario;

@Controller
public class LoginController {

	@Autowired
	private UsuarioDao dao;
	@Autowired
	private OrcamentoDao oDao;

	@RequestMapping("efetuaLogin")
	public String efetuaLogin(Usuario usuario, HttpSession session) {
		Usuario user = dao.verificaUsuario(usuario);
		if (user != null) {
			session.setAttribute("usuarioLogado", user);
			session.setAttribute("orcamentos",
					oDao.listaOrcamentosPorUsuario(user.getId()));
			return "redirect: minhaPagina";
		}
		return "redirect: loginInvalido";
	}

	@RequestMapping("loginInvalido")
	public String loginInvalido(Model model) {
		model.addAttribute("erroLogin", "erro");
		return "login";
	}

	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect: login";
	}

}
