package com.minhaLojaDeGames.Jogos.Repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import com.minhaLojaDeGames.Jogos.Model.Categoria;

public interface CategoriaRepository extends JpaRepository<Categoria, Long>{
	
	public List<Categoria> findAllByPlataformaContainingIgnoreCase(String plataforma);

}
