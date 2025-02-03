package com.devops_tp1.backend_api.unit;

import com.devops_tp1.backend_api.dao.DepartmentDAO;
import com.devops_tp1.backend_api.entity.Department;
import com.devops_tp1.backend_api.service.DepartmentService;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class DepartmentsServiceTest {

    @InjectMocks
    private DepartmentService departmentService;

    @Mock
    private DepartmentDAO departmentDAO;

    private final Department DEPARTMENT = Department.builder()
            .id(1L)
            .name("DepartementTest")
            .build();

    @Test
    void testGetDepartmentByName() {
        when(departmentDAO.findDepartmentByName("DepartmentTest")).thenReturn(DEPARTMENT);
        assertEquals(DEPARTMENT, departmentDAO.findDepartmentByName("DepartmentTest"));
    }

    @Test
    void testGetDepartmentByNameWithNullValue() {
        assertThrows(IllegalArgumentException.class, () -> departmentService.getDepartmentByName(null));
    }

    @Test
    void testGetDepartmentByNameWithEmptyValue() {
        assertThrows(IllegalArgumentException.class, () -> departmentService.getDepartmentByName(""));
    }
}