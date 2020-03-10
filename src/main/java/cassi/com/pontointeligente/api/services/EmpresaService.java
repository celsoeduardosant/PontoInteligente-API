package cassi.com.pontointeligente.api.services;

import java.util.Optional;

import cassi.com.pontointeligente.api.entities.Empresa;

public interface EmpresaService {
	
	/**
	 * Retona uma empresa dado um CNPJ.
	 * 
	 *  @param cnpj
	 *  @return Optional<Empresa>
	 */	
	Optional<Empresa> buscarPorCnpj(String cnpj);
	
	/**
	 * Cadastra uma nova empresa na base de dados
	 * @param empresa
	 * @return Empresa
	 */
	 Empresa persistir(Empresa empresa);
	

}
