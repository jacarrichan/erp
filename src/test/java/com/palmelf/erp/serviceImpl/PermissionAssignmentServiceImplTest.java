package com.palmelf.erp.serviceImpl;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.palmelf.erp.service.PermissionAssignmentService;

public class PermissionAssignmentServiceImplTest extends BaseServieTest {
	@Autowired
	private PermissionAssignmentService permissionAssignmentService;
	private Integer roleId;
	private Integer userId;

	@Test
	public void testSavePermission() {
		roleId = 1;
		userId = 1;
		String checkedIds = "23, 12, 16";
		permissionAssignmentService.savePermission(userId, roleId, checkedIds);
	}
}
