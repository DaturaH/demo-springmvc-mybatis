package htq.controller;


import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import htq.model.MUser;
import htq.service.MUserServiceI;

@Controller
@RequestMapping("/muserController")
public class MUserController {
    
	private static int failedcount = 0;

	@Resource
	private MUserServiceI muserService;


	@RequestMapping(value="/listUser")
	public String listUser(HttpServletRequest request) {
		
		List <MUser> list = muserService.getAll();
		request.setAttribute("userlist", list);
		return "listUser";
	}
	
	@RequestMapping(value="/addUser")
	public String addUser(MUser muser) {
			
		String id = UUID.randomUUID().toString();
		muser.setId(id);
		muserService.insert(muser);
		return "redirect:/muserController/listUser.do";
	}
	
	@RequestMapping(value="/deleteUser")
	public String deleteUser(String id) {
		
		muserService.delete(id);
		return "redirect:/muserController/listUser.do";
	}
	
	@RequestMapping(value="/updateUserUI")
	public String updateUserUI(String id, HttpServletRequest request) {
		
		MUser muser = muserService.selectByPrimaryKey(id);
		request.setAttribute("user", muser);
		return "updateUser";
	}

	@RequestMapping(value="/updateUser")
	public String updateUser(MUser muser) {
		
		muserService.update(muser);
		return "redirect:/muserController/listUser.do";
	}
	
	@RequestMapping(value="/userLogin")
	public String userLogin(MUser muser){
		MUser umuser = muserService.findByName(muser.getName());
		if(umuser.getName().equals(muser.getName())){
			if(!umuser.getPassword().equals(muser.getPassword())){
				if(failedcount == 3){
					System.out.println("sorry! 密码不正确！登录错误次数已经3次，请于10分钟后再尝试登录。");
				}else{
					failedcount++;
					System.out.println("sorry! 密码不正确！");
				}
				return "userLogin";
			}else{
				return "redirect:/muserController/listUser.do";
			}
		}else{
			System.out.println("用户不存在");
			return "userLogin";
		}
	}
}
