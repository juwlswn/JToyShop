package mini.project.toy.service;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import mini.project.toy.vo.Member;

@Repository
public class MemberDAO implements MemberMapper {

	@Inject
	SqlSession session;

	@Override
	public int insertMember(Member member) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		int result =0;
		try {
			result = mapper.insertMember(member);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int updateMember(Member member) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		int result = 0;
		try {
			result = mapper.updateMember(member);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int deleteMember(String id) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		int result = 0;
		try {
			result = mapper.deleteMember(id);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public Member login(Member member) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		Member m = null;
		try {
			m = mapper.login(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return m;
	}

	@Override
	public String checkId(String id) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		String m= "";
		try {
			m = mapper.checkId(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return m;
	}

	@Override
	public Member getMember(String id) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		Member m = null;
		try {
			m = mapper.getMember(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return m;
	}
	
	
}
