package com.example.corporatefinance.repository;

import com.example.corporatefinance.domain.Country;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CountryRepository extends JpaRepository<Country, Long> {
}
