package com.example.corporatefinance.repository;

import com.example.corporatefinance.domain.Rating;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RatingRepository extends JpaRepository<Rating, Long> {
}
