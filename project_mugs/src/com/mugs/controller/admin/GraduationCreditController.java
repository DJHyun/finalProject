package com.mugs.controller.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mugs.service.admin.GraduationCreditService;
import com.mugs.vo.GraduationCredit;

@Controller
@RequestMapping("/admin/")
public class GraduationCreditController {
	
	@Autowired
	private GraduationCreditService graduationCreditService;
	
	@RequestMapping("insertGraduationCreditController")
	public ModelAndView insertGraduationCredit(GraduationCredit graduationCredit, HttpSession session){
		session.setAttribute("grainsertMessage","1");
		graduationCreditService.insertGraduationCredit(graduationCredit);
		return new ModelAndView("redirect:/admin/selectMajorGraduationCreditByMajorIdController.do","majorId",graduationCredit.getMajorId());
	}
	
	@RequestMapping("updateGraduationCreditController")
	public ModelAndView updateGraduationCredit(GraduationCredit graduationCredit, HttpSession session){
		session.setAttribute("graupdateMessage","1");
		graduationCreditService.updateGraduationCredit(graduationCredit);
		return new ModelAndView("redirect:/admin/selectMajorGraduationCreditByMajorIdController.do","majorId",graduationCredit.getMajorId());
	}
	
	@RequestMapping("deleteGraduationCreditController")
	public ModelAndView deleteGraduationCredit(int majorId, int graduationCreditYear, HttpSession session){
		session.setAttribute("gradeleteMessage","1");
		graduationCreditService.deleteGraduationCredit(majorId, graduationCreditYear);
		return new ModelAndView("redirect:/admin/selectMajorGraduationCreditByMajorIdController.do","majorId",majorId);
	}
	
	@RequestMapping("selectForUpdateByIdController")
	public ModelAndView selectForUpdateByIdController(int majorId){
		List<GraduationCredit> list = graduationCreditService.selectGraduationCreditByMajorId(majorId);
		return new ModelAndView("admin/graduationcredit/update_graduation_credit.tiles","list",list);
	}
	
	@RequestMapping("selectGraduationCreditForUpdateController")
	@ResponseBody
	public GraduationCredit selectGraduationCreditForUpdate(int majorId, int graduationCreditYear){
		GraduationCredit graduationCredit = graduationCreditService.selectGraduationCreditbyId(majorId, graduationCreditYear);
		return graduationCredit;
	}
}
