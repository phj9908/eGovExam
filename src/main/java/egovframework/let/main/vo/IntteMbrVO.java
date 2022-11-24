package egovframework.let.main.vo;

import java.io.Serializable;

public class IntteMbrVO implements Serializable {

    /**
     * 
     */
    private static final long serialVersionUID = 409126729775079184L;

    private Integer intteSeq;

    private String intteMbrId;

    public Integer getIntteSeq() {
        return intteSeq;
    }

    public void setIntteSeq(Integer intteSeq) {
        this.intteSeq = intteSeq;
    }

    public String getIntteMbrId() {
        return intteMbrId;
    }

    public void setIntteMbrId(String intteMbrId) {
        this.intteMbrId = intteMbrId;
    }

    public static long getSerialversionuid() {
        return serialVersionUID;
    }
    
}