package com.example.bloodbank.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.bloodbank.entity.BloodBank;

@Repository
public interface BloodBankRepository extends JpaRepository<BloodBank, Long> {
    
}
