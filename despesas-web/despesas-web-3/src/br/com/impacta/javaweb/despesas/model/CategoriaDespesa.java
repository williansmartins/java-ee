package br.com.impacta.javaweb.despesas.model;

public enum CategoriaDespesa {
	ALIMENTACAO("Alimenta��o"), 
	CUIDADOS_PESSOAIS("Cuidados pessoais"), 
	DIVERSOS("Diversos"), 
	DOACOES("Doa��es"), 
	EDUCACAO("Educa��o"), 
	LAZER("Lazer"), 
	MORADIA("Moradia"), 
	SAUDE("Sa�de"),
	SUPERMERCADO("Supermercado"), 
	TRANSPORTE("Transporte"), 
	VEICULO("Ve�culo"), 
	VESTUARIO("Vestuario"), 
	VIAGEM("Viagem");
	
	String textoHumanizado;
	
	private CategoriaDespesa(){
		
	}
	
	private CategoriaDespesa(String s){
		this.textoHumanizado = s;
	}
	
	public String getTextoHumanizado(){
		return this.textoHumanizado;
	}
}
