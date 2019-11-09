package br.com.impacta.javaweb.despesas.model;

public enum CategoriaDespesa {
	ALIMENTACAO("Alimentação"), 
	CUIDADOS_PESSOAIS("Cuidados pessoais"), 
	DIVERSOS("Diversos"), 
	DOACOES("Doações"), 
	EDUCACAO("Educação"), 
	LAZER("Lazer"), 
	MORADIA("Moradia"), 
	SAUDE("Saúde"),
	SUPERMERCADO("Supermercado"), 
	TRANSPORTE("Transporte"), 
	VEICULO("Veículo"), 
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
