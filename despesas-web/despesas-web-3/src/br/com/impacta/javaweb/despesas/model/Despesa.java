package br.com.impacta.javaweb.despesas.model;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Despesa {

	private String descricao;
	private CategoriaDespesa categoria;
	private LocalDate data;
	private double valor;
	private String observacoes;

	public Despesa() {
	}

	public Despesa(String descricao, CategoriaDespesa categoria, LocalDate data, double valor, String observacoes) {
		this.setDescricao(descricao);
		this.setCategoria(categoria);
		this.setData(data);
		this.setValor(valor);
		this.setObservacoes(observacoes);
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public CategoriaDespesa getCategoria() {
		return categoria;
	}

	public void setCategoria(CategoriaDespesa categoria) {
		this.categoria = categoria;
	}

	public LocalDate getData() {
		return data;
	}

	public void setData(LocalDate data) {
		this.data = data;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public String getObservacoes() {
		return observacoes;
	}

	public void setObservacoes(String observacoes) {
		this.observacoes = observacoes;
	}

	public String getDataFormatada() {
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		return data.format(formatter);
	}

}
