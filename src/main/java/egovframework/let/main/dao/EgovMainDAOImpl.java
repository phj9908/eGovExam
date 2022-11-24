package egovframework.let.main.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.let.main.vo.IntteMbrVO;
import egovframework.let.main.vo.IntteVO;
import egovframework.let.main.vo.ListVO;
import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository("EgovMainDAO")
public class EgovMainDAOImpl extends EgovAbstractMapper implements EgovMainDAO {

    @Override
    public List<EgovMap> getIntteClsList(IntteVO vo) throws Exception {
        return selectList("EgovMainDAO.selectIntteClsList", vo);
    }

    @Override
    public List<EgovMap> getIntteList() throws Exception {
        return selectList("EgovMainDAO.selectIntteList");
    }

    @Override
    public EgovMap getUserInfo(IntteMbrVO vo) throws Exception {
        return selectOne("EgovMainDAO.selectIntteMbr", vo);
    }

	@Override
	public List<ListVO> getList(ListVO vo) throws Exception {
		
		return selectList("EgovMainDAO.selectList",vo);
	}

}