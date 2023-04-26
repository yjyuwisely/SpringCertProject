/**
 * patientMod 진단서 작성페이지 id값 가지고 post로 페이지 이동
 */
console.log("patientModify connect");

function patientModify(id,name){
    let f = document.createElement('form');
    let objId;
    let objName;
    objId = document.createElement('input');
    objId.setAttribute('type', 'hidden');
    objId.setAttribute('name', 'id');
    objId.setAttribute('value', id);
    
    objName = document.createElement('input');
    objName.setAttribute('type', 'hidden');
    objName.setAttribute('name', 'name');
    objName.setAttribute('value', name);
    
    f.appendChild(objId);
    f.appendChild(objName);
    f.setAttribute('method', 'post');
    f.setAttribute('action', 'patientModify');
    document.body.appendChild(f);
    f.submit();
}

//$(document).ready(function() {
//    $('#IdName').click(function(e) {
//        e.preventDefault();
//        $.ajax({
//            type: 'POST',
//            url: 'patientMod',
//            data: {
//                id: $('#id').val(),
//                name: $('#name').val()
//            },
//            success: function(result) {
//                // 성공 시 실행되는 코드
//            },
//            error: function(request, status, error) {
//                // 실패 시 실행되는 코드
//            }
//        });
//    });
//});