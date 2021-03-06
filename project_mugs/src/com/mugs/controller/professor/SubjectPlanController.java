package com.mugs.controller.professor;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mugs.service.professor.SubjectPlanService;
import com.mugs.vo.ProfessorSubject;
import com.mugs.vo.SubjectPlan;
import com.mugs.vo.Users;

@Controller
@RequestMapping("/professor/")
public class SubjectPlanController{

	@Autowired
	private SubjectPlanService service;
	
	@RequestMapping("searchSubjectListById") 
	@ResponseBody
	public List<ProfessorSubject> getProfessorSubjectList(){
		Users users = (Users)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String id = users.getUsersId();
		//Business Logic 호출	
		List<ProfessorSubject> list = service.getProfessorSubjectInfoByJoin(id);
		return list;
	}
	
	@RequestMapping("searchSubjectPlanByFourId") 
	@ResponseBody
	public SubjectPlan getSubjectPlan(int planYear, String planSemester, int subjectId, String proId){
		
		SubjectPlan subjectPlan = service.getSubjectPlanByFourId(planYear, planSemester, subjectId, proId);
		return subjectPlan;
		
	}
	@RequestMapping("registerSubjectPlan") 
	@ResponseBody
	public String joinSubjectPlan(@ModelAttribute SubjectPlan sp){
		//비지니스로직
		service.addSubjectPlan(sp);
	return "professor/SubjectPlan_insert.tiles"; 
	}
	
	@RequestMapping("reNewSubjectPlan") 
	@ResponseBody
	public String reNewSubjectPlan(@ModelAttribute SubjectPlan sp){
		//비지니스로직
		service.setSubjectPlan(sp);
	return "professor/SubjectPlan_update.tiles";
	}
	
	@RequestMapping("removeSubjectPlan") 
	@ResponseBody
	public String removeSubjectPlan(int planId2){
		//비지니스로직
		
		//int planId = Integer.parseInt(id);
		service.deleteSubjectPlanById(planId2);
	return "professor/SubjectPlan_update.tiles"; //WEB-INF/view/contents/professor/SubjectPlan_success.jsp
	}
}
