package com.mugs.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mugs.dao.AcademicProbationDao;
import com.mugs.vo.AcademicProbation;
@Repository
public class AcademicProbationDaoImpl implements AcademicProbationDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	private String makeSql(String id) {
		return "com.mugs.config.mapper.academicProbationMapper."+id;
	}
	
	@Override
	public int insertAcademicProbation(AcademicProbation academicProbation) {
		// TODO Auto-generated method stub
		return session.insert(makeSql("insertAcademicProbation"), academicProbation);
	}

	@Override
	public int updateAcademicProbationById(AcademicProbation academicProbation) {
		// TODO Auto-generated method stub
		return session.update(makeSql("updateAcademicProbationById"), academicProbation);
	}

	@Override
	public int deleteAcademicProbation(int probationId) {
		// TODO Auto-generated method stub
		return session.delete(makeSql("deleteAcademicProbation"), probationId);
	}

	@Override
	public AcademicProbation selectAcademicProbationById(int probationId) {
		// TODO Auto-generated method stub
		return session.selectOne(makeSql("selectAcademicProbationById"), probationId);
	}

	@Override
	public List<AcademicProbation> selectAcademicProbationList() {
		// TODO Auto-generated method stub
		return session.selectList(makeSql("selectAcademicProbationList"));
	}

	@Override
	public List<AcademicProbation> selectAcademicProbationByStuId(String stuId) {
		// TODO Auto-generated method stub
		System.out.println("daoImpl / "+ stuId);
		return session.selectList(makeSql("selectAcademicProbationByStuId"), stuId);
	}

	@Override
	public int deleteAcademicProbationByThreeId(int probationYear, String probationSemester, String stuId) {
		HashMap params = new HashMap();
		params.put("probationYear", probationYear);
		params.put("probationSemester", probationSemester);
		params.put("stuId", stuId);
		return session.delete(makeSql("deleteAcademicProbationByThreeId"),params);
	}

	@Override
	public AcademicProbation selectAcademicProbationByThreeId(int probationYear, String probationSemester, String stuId) {
		HashMap params = new HashMap();
		params.put("probationYear", probationYear);
		params.put("probationSemester", probationSemester);
		params.put("stuId", stuId);
		return session.selectOne(makeSql("selectAcademicProbationByThreeId"),params);
	}

	@Override
	public List<AcademicProbation> selectForExpel(String stuId) {
		return session.selectList(makeSql("selectForExpel"),stuId);
	}

	@Override
	public List<AcademicProbation> selectForExpelStudentInfo() {
		return session.selectList(makeSql("selectForExpelStudentInfo"));
	}
	
	
	
}
