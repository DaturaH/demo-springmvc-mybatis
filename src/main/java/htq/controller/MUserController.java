package htq.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.opensymphony.xwork2.util.logging.Logger;
import com.opensymphony.xwork2.util.logging.LoggerFactory;

import htq.model.MUser;
import htq.model.UserModel;
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
	@ResponseBody
	public Map<String , String> userLogin(String name,String password){
		Map<String , String> result = new HashMap<String , String>();
		MUser umuser = muserService.findByName(name);
		result.put("note", "success");
		if( umuser == null || "".equals( umuser)){
			result.put("note", "error2");
			System.out.println("用户不存在");
			System.out.println(result);
			return  result;			
		}
		
		if(!umuser.getPassword().equals(password)){
			if(failedcount == 3){
//				System.out.println("sorry! 密码不正确！登录错误次数已经3次，请于10分钟后再尝试登录。");
				result.put("note", "error0");
			}else{
				failedcount++;
//				System.out.println("sorry! 密码不正确！");
				result.put("note", "error1");
				}
		}else{
			result.put("note", "success");
		}
		System.out.println(result);
		return result;
	}

	@RequestMapping(value="/findTwo")
	public String findTwo(String name , HttpServletRequest request){
		MUser muser = muserService.findByName(name);

	    if( muser == null || muser.equals("")){
	    	System.out.println("不存在此会员名称,请重新输入！！");
	    	return "findOne";
	    }

		request.setAttribute("user" , muser);
		return "findTwo";
	}
	
	@RequestMapping(value="/findThree")
	public String findThree(String name , String result , HttpServletRequest request){
		MUser muser = muserService.findByName(name);
	    if( muser.getResult() == null || !muser.getResult().equals(result)){
	    	System.out.println("答案不正确,请重新输入！！");
	    	return "findTwo";
	    }
		request.setAttribute("user" , muser);
		return "findThree";
	}
	
	@RequestMapping(value="/findFour")
	public String findFour(String name , String password){
		MUser muser = muserService.findByName(name);
		muser.setPassword(password);
		muserService.update(muser);
		return "findFour";
	}
	
  
	  
}
