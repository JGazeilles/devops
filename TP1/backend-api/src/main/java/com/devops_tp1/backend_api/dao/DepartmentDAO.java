package com.devops_tp1.backend_api.dao;

import com.devops_tp1.backend_api.entity.Department;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DepartmentDAO extends JpaRepository<Department, Long> {
    Department findDepartmentByName(String name);
}