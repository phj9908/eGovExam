package egovframework.let.main.vo;

import java.io.Serializable;

public class ListVO implements Serializable{
private int intteSeq;
private int clsSeq;
private String clsNm;
private String subjNm;
private String clsStDate;
private String clsFnsDate;

private String useYn;
private String cretDt;

private String searchCnd = "0";
private String searchWrd = "";

public int getIntteSeq() {
    return intteSeq;
}
public void setIntteSeq(int intteSeq) {
    this.intteSeq = intteSeq;
}
public int getClsSeq() {
    return clsSeq;
}
public void setClsSeq(int clsSeq) {
    this.clsSeq = clsSeq;
}
public String getClsNm() {
    return clsNm;
}
public void setClsNm(String clsNm) {
    this.clsNm = clsNm;
}
public String getSubjNm() {
    return subjNm;
}
public void setSubjNm(String subjNm) {
    this.subjNm = subjNm;
}
public String getClsStDate() {
    return clsStDate;
}
public void setClsStDate(String clsStDate) {
    this.clsStDate = clsStDate;
}
public String getClsFnsDate() {
    return clsFnsDate;
}
public void setClsFnsDate(String clsFnsDate) {
    this.clsFnsDate = clsFnsDate;
}
public String getUseYn() {
    return useYn;
}
public void setUseYn(String useYn) {
    this.useYn = useYn;
}
public String getCretDt() {
    return cretDt;
}
public void setCretDt(String cretDt) {
    this.cretDt = cretDt;
}
public String getSearchCnd() {
    return searchCnd;
}
public void setSearchCnd(String searchCnd) {
    this.searchCnd = searchCnd;
}
public String getSearchWrd() {
    return searchWrd;
}
public void setSearchWrd(String searchWrd) {
    this.searchWrd = searchWrd;
}
@Override
public String toString() {
    return "ListVO [intteSeq=" + intteSeq + ", clsSeq=" + clsSeq + ", clsNm=" + clsNm + ", subjNm=" + subjNm
            + ", clsStDate=" + clsStDate + ", clsFnsDate=" + clsFnsDate + ", useYn=" + useYn + ", cretDt=" + cretDt
            + ", searchCnd=" + searchCnd + ", searchWrd=" + searchWrd + "]";
}
}
