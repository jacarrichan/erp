package com.erp.service;

import java.util.List;
import java.util.Map;

import com.erp.model.Users;
import com.erp.util.PageUtil;
import com.erp.viewModel.UserRoleModel;

public interface UserService
{

	boolean persistenceUsers(Map<String, List<Users>> map );

	List<Users> findAllUserList(Map<String, Object> map, PageUtil pageUtil);

	Long getCount(Map<String, Object> map , PageUtil pageUtil);

	List<UserRoleModel> findUsersRolesList(Integer userId );

	boolean saveUserRoles(Integer userId, String isCheckedIds );

	boolean persistenceUsers(Users u );

	boolean delUsers(Integer userId );

}
