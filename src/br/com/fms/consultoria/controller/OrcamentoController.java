package br.com.fms.consultoria.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.fms.consultoria.dao.OrcamentoDao;
import br.com.fms.consultoria.modelo.Orcamento;
import br.com.fms.consultoria.modelo.Usuario;

@Controller
public class OrcamentoController {
	
	@Autowired
	private OrcamentoDao oDao;

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
