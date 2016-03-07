package slim.model.memberInfo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberInfoDAO_Mybatis {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public int total(Map map) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("memberInfo.total", map);
	}

	public List<MemberInfoDTO> list(Map map) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("memberInfo.list", map);
	}

	public MemberInfoDTO read(String id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("memberInfo.read", id);
	}

	public List<ZipcodeDTO> zipcodeList(String dongli) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("memberInfo.zipcode", dongli);
	}

	public int duplicateId(String id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("memberInfo.checkId", id);
	}

	public int duplicateEmail(String email) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("memberInfo.checkEmail", email);
	}

	public int create(MemberInfoDTO dto) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.insert("memberInfo.create", dto);
	}

	public int update(MemberInfoDTO dto) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("memberInfo.update", dto);
	}


	public int delete(String id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.delete("memberInfo.delete", id);
	}

	public int updatePasswd(String id, String passwd) {
		Map map = new HashMap();
		map.put("id", id);
		map.put("passwd", passwd);
		
		return sqlSessionTemplate.update("memberInfo.updatePasswd", map);
	}

	public int updateFile(String id, String filename) {
		Map map = new HashMap();
		map.put("id", id);
		map.put("filename", filename);

		return sqlSessionTemplate.update("memberInfo.updateFile", map);
	}

	public int loginCheck(String id, String passwd) {
		Map map = new HashMap();
		map.put("id", id);
		map.put("passwd", passwd);
		
		return sqlSessionTemplate.selectOne("memberInfo.loginCheck", map);
	}

	public String getGrade(String id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("memberInfo.getGrade", id);
	}
}
