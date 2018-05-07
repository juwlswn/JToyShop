package mini.project.toy.service;

import java.util.ArrayList;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import mini.project.toy.vo.Reply;

@Repository
public class ReplyDAO implements ReplyMapper{

	@Inject
	SqlSession session;

	@Override
	public int insertReply(Reply reply) {
		ReplyMapper mapper = session.getMapper(ReplyMapper.class);
		int result =0;
		try {
			result = mapper.insertReply(reply);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int deleteReply(int rno) {
		ReplyMapper mapper = session.getMapper(ReplyMapper.class);
		int result =0;
		try {
			result = mapper.deleteReply(rno);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public ArrayList<Reply> getReply(String pcode) {
		ReplyMapper mapper = session.getMapper(ReplyMapper.class);
		ArrayList<Reply> rList = null;
		try {
			rList = mapper.getReply(pcode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("여기 다오야"+rList);
		return rList;
	}

	
}
