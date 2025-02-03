package com.devops_tp1.backend_api.service;

import com.devops_tp1.backend_api.dao.DepartmentDAO;
import com.devops_tp1.backend_api.entity.Department;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartmentService {
    private final DepartmentDAO departmentDAO;

    @Autowired
    public DepartmentService(DepartmentDAO departmentDAO) {
        this.departmentDAO = departmentDAO;
    }

    public Department getDepartmentByName(String departmentName) {
        if (departmentName == null || departmentName.length() == 0) {
            throw new IllegalArgumentException("The department name must not be null or empty.");
        }

        return this.departmentDAO.findDepartmentByName(departmentName);
    }

    public List<Department> getDepartments() {
        return this.departmentDAO.findAll();
    }
}