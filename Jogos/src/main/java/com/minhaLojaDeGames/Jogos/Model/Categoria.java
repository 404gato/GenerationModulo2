package com.minhaLojaDeGames.Jogos.Model;


import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "tb_categoria")
public class Categoria {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long IdCategoria;
	
	@NotBlank
	@Size(max = 20)
	private String plataforma;
	
	@OneToMany(mappedBy ="categoria", cascade = CascadeType.ALL)
	@JsonIgnoreProperties("categoria")
	private List<Produto> produto;
	
	
	//gets and sets
	public long getIdCategoria() {
		return IdCategoria;
	}

	public String getPlataforma() {
		return plataforma;
	}

	public List<Produto> getProduto() {
		return produto;
	}

	public void setIdCategoria(Long IdCategoria) {
		this.IdCategoria = IdCategoria;
	}

	public void setPlataforma(String plataforma) {
		this.plataforma = plataforma;
	}

	public void setProduto(List<Produto> produto) {
		this.produto = produto;
	}
	
	
}
