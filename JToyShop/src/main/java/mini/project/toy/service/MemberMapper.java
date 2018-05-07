package mini.project.toy.service;

import mini.project.toy.vo.Member;

public interface MemberMapper {
	//1. 회원 등록
	public int insertMember(Member member);
	//2. 회원 수정
	public int updateMember(Member member);
	//3. 회원 탈퇴
	public int deleteMember(String id);
	//4. 로그인
	public Member login(Member member);
	//5. 아이디 중복 확인
	public String checkId(String id);
	//6. 회원 정보 가져오기
	public Member getMember(String id);
}
