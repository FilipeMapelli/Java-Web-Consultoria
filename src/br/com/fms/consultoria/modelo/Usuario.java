package br.com.fms.consultoria.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class Usuario extends Modelo {

	@Column(length = 100, nullable = false)
	private String nome;
	@Column(length = 20, nullable = false)
	private String nomeUsuario;
	@Column(length = 50, nullable = false)
	private String email;
	@Column(length = 20)
	private String fone;
	@Column(length = 20, nullable = false)
	private String senha;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFone() {
		return fone;
	}

	public void setFone(String fone) {
		this.fone = fone;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getNomeUsuario() {
		return nomeUsuario;
	}

	public void setNomeUsuario(String nomeUsuario) {
		this.nomeUsuario = nomeUsuario;
	}

}
