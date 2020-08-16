package com.cliente;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClienteService {
	
	@Autowired
	private ClienteRepository repo;
	
	public List<Cliente> listAll()
	{
		return (List<Cliente>) repo.findAll();
	}
	
	public void save(Cliente cliente)
	{
		repo.save(cliente);
	}
	
	public Cliente get(long id)
	{
		Optional<Cliente> result = repo.findById(id);	
		
		return result.get();
	}
	
	public void delete(long id)
	{
		repo.deleteById(id);
	}
	
	public List<Cliente> search(String keyword)
	{
		return (List<Cliente>) repo.search(keyword);
	}
	
}
