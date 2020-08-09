package com.Insurance.Agent;


import java.util.List;
 
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
 
public interface AgentRepository extends CrudRepository<Agent, Long> {
     
    @Query(value = "SELECT c FROM agent c WHERE c.firstname LIKE '%' || :keyword || '%'"
            + " OR c.middlename LIKE '%' || :keyword || '%'"
            + " OR c.lastname LIKE '%' || :keyword || '%'"
		+ " OR c.password LIKE '%' || :keyword || '%'"
            + " OR c.phone LIKE '%' || :keyword || '%'"
	+ " OR c.emailaddress LIKE '%' || :keyword || '%'")

    public List<Agent> search(@Param("keyword") String keyword);
}




