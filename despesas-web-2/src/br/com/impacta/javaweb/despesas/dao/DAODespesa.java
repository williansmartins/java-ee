package br.com.impacta.javaweb.despesas.dao;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import br.com.impacta.javaweb.despesas.model.CategoriaDespesa;
import br.com.impacta.javaweb.despesas.model.Despesa;

public class DAODespesa {
	
	private List<Despesa> despesas;
	
	public List<Despesa> getDespesas() {
		
		if (this.despesas == null) {
			despesas = new ArrayList<>();
		}

		despesas.add(new Despesa("Restaurante", CategoriaDespesa.ALIMENTACAO, LocalDate.now(), 89.95));
		despesas.add(new Despesa("Corte de Cabelo", CategoriaDespesa.CUIDADOS_PESSOAIS, LocalDate.now(), 45));
		despesas.add(new Despesa("Combust�vel", CategoriaDespesa.VEICULO, LocalDate.now(), 80));
		despesas.add(new Despesa("T�nis", CategoriaDespesa.VESTUARIO, LocalDate.now(), 237));
		despesas.add(new Despesa("Almo�o", CategoriaDespesa.ALIMENTACAO, LocalDate.now(), 30));
		despesas.add(new Despesa("Conte de Energia", CategoriaDespesa.MORADIA, LocalDate.now(), 170));
		despesas.add(new Despesa("Pagamento P�s", CategoriaDespesa.EDUCACAO, LocalDate.now(), 850));
		despesas.add(new Despesa("Plano de Sa�de", CategoriaDespesa.SAUDE, LocalDate.now(), 360));
		
		return despesas;
	}
}
