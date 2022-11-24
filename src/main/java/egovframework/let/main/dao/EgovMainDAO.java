package egovframework.let.main.dao;

import java.util.List;

import egovframework.let.main.vo.IntteMbrVO;
import egovframework.let.main.vo.IntteVO;
import egovframework.let.main.vo.ListVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface EgovMainDAO {

    public List<EgovMap> getIntteClsList(IntteVO vo) throws Exception;

    public List<EgovMap> getIntteList() throws Exception;

    public EgovMap getUserInfo(IntteMbrVO vo) throws Exception;
    
    public List<ListVO> getList(ListVO vo) throws Exception;
}