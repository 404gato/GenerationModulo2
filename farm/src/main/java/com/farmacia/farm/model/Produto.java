package com.farmacia.farm.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "tb_produto")
public class Produto {
	
	
	//colunms
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank
	@Size(max = 20)
	private String nome;
	
	@NotBlank
	@Size(max = 20)
	private String tipoProduto;
	
	@NotBlank
	@Size(max = 20)
	private String tipoRemedio;
	
	@NotNull
	private float preco;
	
	@ManyToOne
	@JsonIgnoreProperties("produto")
	private Categoria categoria;
	
	

	
	
	//getters and setters
	public Long getId() {
		return id;
	}

	public String getNome() {
		return nome;
	}

	public String getTipoProduto() {
		return tipoProduto;
	}

	public String getTipoRemedio() {
		return tipoRemedio;
	}

	public float getPreco() {
		return preco;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public void setTipoProduto(String tipoProduto) {
		this.tipoProduto = tipoProduto;
	}

	public void setTipoRemedio(String tipoRemedio) {
		this.tipoRemedio = tipoRemedio;
	}

	public void setPreco(float preco) {
		this.preco = preco;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
	
	
	
	
	

}
