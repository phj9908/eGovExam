package egovframework.let.main.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.let.main.dao.EgovMainDAO;
import egovframework.let.main.vo.IntteMbrVO;
import egovframework.let.main.vo.IntteVO;
import egovframework.let.main.vo.ListVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("EgovMainService")
public class EgovMainServiceImpl implements EgovMainService {

    @Resource(name = "EgovMainDAO")
    private EgovMainDAO mainDAO;

    @Override
    public List<EgovMap> getIntteClsList(IntteVO vo) throws Exception {
        return mainDAO.getIntteClsList(vo);
    }

    @Override
    public List<EgovMap> getIntteList() throws Exception {
        return mainDAO.getIntteList();
    }

    @Override
    public EgovMap getUserInfo(IntteMbrVO vo) throws Exception {
        return mainDAO.getUserInfo(vo);
    }

    @Override
    public List<ListVO> getList(ListVO vo) throws Exception {
        return mainDAO.getList(vo);
    }

}