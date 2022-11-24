$(document).ready(function() {
    
});

function userLogin() {
    var dataForm = $('<form></form>');
    dataForm.append($('<input/>', {type: 'hidden', name: 'intteSeq', value: $("#intteList option:selected").val()}));
    dataForm.append($('<input/>', {type: 'hidden', name: 'intteMbrId', value: $("#userId").val()}));

    console.log(dataForm.serialize());

    $.ajax({
        type: "POST",
        url: ($("#contextPath").val() + "/user/login.do"),
        data: dataForm.serialize(),
        dataType: "json",
        success: function(res){
            console.log(res);
            if (!res.success) {
                alert("입력된 정보로 조회된 내용이 없습니다.");
                return false;
            }

            alert("로그인 되었습니다.");

            location.href=$("#contextPath").val()+"/list.do";
        },
        error : function(XMLHttpRequest, textStatus, errorThrown){
            console.log(XMLHttpRequest);
            console.log(textStatus);
            console.log(errorThrown);
            alert("데이터 조회에 실패하였습니다.\r\n관리자에게 문의해 주세요.");
        }
    });
}