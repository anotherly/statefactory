package baseball.member.model;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

@Service
public class MemberRepository {
	
	@Resource
	SqlSessionTemplate template;

	
	public List<MemberVo> list() {
		return template.selectList("mm.selectList");
	}

	public MemberVo detail(MemberVo vo) {
		System.out.println("��� �������丮 - ������ �޼ҵ�");
		
		return template.selectOne("mm.selectDetail",vo);
	}
	
	public void insert(MemberVo vo) {
		System.out.println("��� �������丮 - �μ�Ʈ �޼ҵ�");
//		vo.setReceivemail("����");
		vo.setGrade("user");
		System.out.println(vo);
		template.insert("mm.insertOne",vo);
	}
	
	public void delete(MemberVo vo) {

		template.delete("mm.delete",vo);
	}
	
	public MemberVo idPwChk(MemberVo vo){
		System.out.println("��� �������丮 ���̵� �н����� üũ");
		return template.selectOne("mm.idPwChk", vo);
	}
	
	public void fileDelete(MemberVo vo){
		System.out.println("��� �������丮 ���ϵ���Ʈ");
		template.update("mm.fileDelete", vo);
	} 
	
	public boolean modify(MemberVo vo){
		System.out.println("��� �������丮 �������");
		return template.update("mm.modify", vo)>0;
	} 

	//�α��� ����
//
//	public MemberVo loginCheck(MemberVo vo) {
//		System.out.println("��� �������丮 - �α���üũ �޼ҵ�");
//		return template.selectOne("mm.loginCheck",vo);
//	}
//	
	public MemberVo findId(MemberVo vo) {
		System.out.println("��� �������丮 - ���ε���̵� �޼ҵ�");
		return template.selectOne("mm.findId",vo);
	}
	
	public MemberVo findPw(MemberVo vo) {
		
		System.out.println("��� �������丮 - ���ε� �н����� �޼ҵ�");
		return template.selectOne("mm.findPw",vo);
	}
	
}
