package br.com.fms.consultoria.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Orcamento extends Modelo {

	@Column(length = 2500, nullable = false)
	private String descricao;
	@ManyToOne
	@JoinColumn(nullable = false)
	private Usuario usuario;

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

}
