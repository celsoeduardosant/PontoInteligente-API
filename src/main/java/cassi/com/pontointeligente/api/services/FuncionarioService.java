package cassi.com.pontointeligente.api.services;

import java.util.Optional;

import cassi.com.pontointeligente.api.entities.Funcionario;

public interface FuncionarioService {
	
	/**
	 * Persiste um funcionario na base de dados
	 * 
	 * @param funcionario
	 * @return Funcionario
	 */	
	Funcionario persistir(Funcionario funcionario);
	
	
	/**
	 * Busca e retorna um funcionario dado um CPF
	 * 
	 * @param cpf
	 * @return Optional<Funcionario>
	 */
	Optional<Funcionario> buscarPorCPF(String cpf);
	
	/**
	 * Busca e retorna um funcionário dado um email
	 * 
	 * @param email
	 * @return Optional<Funcionario>
	 */
	Optional<Funcionario> buscarPorEmail(String email);
	
	/**
	 * Busca e retorna um funcionario po ID
	 * 
	 * @param id
	 * @return Optional<Funcionario>
	 */
	Optional<Funcionario> buscarPorId(Long id);
	

}
