package com.cliente;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface ClienteRepository extends CrudRepository<Cliente, Long>{
	
	@Query(value = "SELECT c FROM Cliente c WHERE c.name LIKE '%' || :keyword || '%'" 
	+ "OR c.email LIKE '%' || :keyword || '%'"
	+ "OR c.address LIKE '%' || :keyword || '%'")
	public List<Cliente> search(@Param("keyword") String keyword);

}
