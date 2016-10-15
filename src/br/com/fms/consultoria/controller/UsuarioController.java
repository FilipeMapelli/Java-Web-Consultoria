package br.com.fms.consultoria.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.fms.consultoria.dao.UsuarioDao;
import br.com.fms.consultoria.modelo.Usuario;
import br.com.fms.consultoria.security.CryptoSecurityAES;

@Controller
public class UsuarioController {

	@Autowired
	private UsuarioDao usuarioDao;

	@Autowired
	private CryptoSecurityAES criptografar;

	@RequestMapping("mostraUsuario")
	public String mostraUsuario() {
		return "mostra-usuario";
	}

	@RequestMapping("editar")
	public String editar(Usuario usuario, HttpSession session) {
		usuarioDao.editar(usuario);
		session.setAttribute("usuarioLogado", usuarioDao.buscar(usuario.getId()));
		return "redirect: minhaPagina";
	}

	@RequestMapping("efetuaCadastro")
	public String cadastro(Usuario usuario) {
		Usuario user = usuario;
		if (usuarioDao.verificaEmail(usuario) == null) {
			try {
				user.setSenha(
						criptografar.encrypt(usuario.getSenhaNaoCriptografada(), criptografar.getKeyEncryption()));
			} catch (Exception e) {
				throw new RuntimeException("Erro ao criptografar", e);
			}
			usuarioDao.salvar(user);
			return "redirect: cadastroRealizado";
		}else{
			return "redirect: erroCadastro";
		}
	}

	@RequestMapping("cadastroRealizado")
	public String mensagem(Model model) {
		model.addAttribute("sucesso", "sucesso");
		return "login";
	}
	
	@RequestMapping("erroCadastro")
	public String mensagemErro(Model model) {
		model.addAttribute("erro", "erro");
		return "formulario-cadastro";
	}

}
