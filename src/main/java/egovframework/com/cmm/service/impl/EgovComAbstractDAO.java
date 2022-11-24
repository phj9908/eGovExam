package egovframework.com.cmm.service.impl;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSessionFactory;

/**
 * EgovComAbstractDAO.java 클래스
 * 
 * @author 서준식
 * @since 2011. 9. 23.
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------    -------------    ----------------------
 *   2011. 9. 23.   서준식        최초 생성
 * </pre>
 */
public abstract class EgovComAbstractDAO extends EgovAbstractMapper/*EgovAbstractDAO*/{

//	@Resource(name="egov.sqlMapClient")
//	public void setSuperSqlMapClient(SqlMapClient sqlMapClient) {
//        super.setSuperSqlMapClient(sqlMapClient);
//    }

	@Resource(name="sqlSession")
	public void setSqlSessionFactory(SqlSessionFactory sqlSession) {
	    super.setSqlSessionFactory(sqlSession);
	}

}
