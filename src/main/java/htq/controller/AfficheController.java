package htq.controller;

import java.util.List;

import htq.model.AfficheForm;
import htq.service.AfficheServiceI;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/afficheController")
public class AfficheController {

	@Resource
	private AfficheServiceI afficheService;
	
	@RequestMapping(value="/listAffiche")
	@ResponseBody
	public List<AfficheForm> listAffiche(HttpServletRequest request){
		List<AfficheForm> list = afficheService.getAll();
		return list;
	}
}
