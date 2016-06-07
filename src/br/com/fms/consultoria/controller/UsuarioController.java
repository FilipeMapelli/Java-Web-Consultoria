package br.com.fms.consultoria.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.fms.consultoria.dao.OrcamentoDao;
import br.com.fms.consultoria.dao.UsuarioDao;
import br.com.fms.consultoria.modelo.Orcamento;
import br.com.fms.consultoria.modelo.Usuario;


@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioDao dao;
	@Autowired
	private OrcamentoDao oDao;

	@RequestMapping("home")
	public String index(Model model){
		return "index";
	}
	
	@RequestMapping("cadastro")
	public String formCadastro(){
		return "formulario-cadastro";
	}
	
	@RequestMapping("sobre")
	public String sobre(){
		return "sobre";
	}
	
	@RequestMapping("consultoria")
	public String consultoria(){
		return "consultoria";
	}
	
	@RequestMapping("dev")
	public String desenvolvimento(){
		return "desenvolvimento";
	}
	
	@RequestMapping("contato")
	public String contato(){
		return "contato";
	}
	
	@RequestMapping("login")
	public String login(){
		return "login";
	}
	
	@RequestMapping("orcamento")
	public String orcamento(){
		return "orcamento";
	}
	
	@RequestMapping("minhaPagina")
	public String minhaPagina(){
		return "minha-pagina";
	}
	
	@RequestMapping("mostraUsuario")
	public String mostraUsuario(){
		return "mostra-usuario";
	}
	
	@RequestMapping("editar")
	public String editar(Usuario usuario, HttpSession session){
		dao.editar(usuario);
		session.setAttribute("usuarioLogado", dao.buscar(usuario.getId()));
		return "redirect: minhaPagina";
	}
	
	@RequestMapping("efetuaCadastro")
	public String cadastro(Usuario usuario, Model model){
		dao.salvar(usuario);
		model.addAttribute("usuario", dao.buscar(usuario.getId()));
		return "redirect: home";
	}
	
	
	@RequestMapping("efetuaLogin")
	public String efetuaLogin(Usuario usuario, HttpSession session,Model model){
		Usuario user = dao.verificaUsuario(usuario);
		if(user != null){
			session.setAttribute("usuarioLogado",user);
			session.setAttribute("orcamentos", oDao.listaOrcamentosPorUsuario(user.getId()));
			return "redirect: home";
		}
		return "redirect: login";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect: efetuaLogin";
	}
	
	@RequestMapping("salvaOrcamento")
	public String salvaOrcamento(Orcamento orcamento, HttpSession session, @RequestParam("id") Long id){
		Usuario usuario = new Usuario();
		usuario.setId(id);
		orcamento.setUsuario(usuario);
		oDao.salvar(orcamento);
		session.setAttribute("orcamentos", oDao.listaOrcamentosPorUsuario(usuario.getId()));
		return "redirect: minhaPagina";
	}
	
	
}
