package baseball.team;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import baseball.team.model.TeamVo;

@Service
public class TeamRepository {

	@Resource
	SqlSessionTemplate template;

	public List<TeamVo> list() {
		return template.selectList("teamMap.selectList");
	}

	public List<TeamVo> listSch(TeamSch sch) {
		return template.selectList("teamInfo.selectListSch", sch);
	}

	public List<TeamVo> listSchList(TeamSch sch) {
		return template.selectList("teamInfo.selectListSchList", sch);
	}

	public TeamVo detail(TeamVo vo) {
		return template.selectOne("teamInfo.selectDetail", vo);
	}

	public void insert(TeamVo vo) {
		template.insert("teamInfo.insertOne", vo);
	}

	public TeamVo idPwChk(TeamVo vo) {
		return template.selectOne("teamInfo.idPwChk", vo);
	}

	public void fileDelete(TeamVo vo) {
		template.update("teamInfo.fileDelete", vo);
	}

	public void delete(TeamVo vo) {
		template.delete("teamInfo.delete", vo);
	}

	public boolean modify(TeamVo vo) {
		return template.update("teamInfo.modify", vo) > 0;
	}
}
