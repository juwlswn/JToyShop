package mini.project.toy.service;

import java.util.ArrayList;

import mini.project.toy.vo.Reply;

public interface ReplyMapper {
	//댓글 등록
	public int insertReply(Reply reply);
	//댓글 삭제
	public int deleteReply(int rno);
	//댓글 읽기
	public ArrayList<Reply> getReply(String pcode);
}
