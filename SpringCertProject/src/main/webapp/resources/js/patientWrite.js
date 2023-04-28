/**
 * patientMod 진단서 작성페이지 id값 가지고 post로 페이지 이동
 */
console.log("patientWrite connect");
console.log("id = " + id);
function patientWrite(id,name){
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
    f.setAttribute('action', 'patientWriteUp');
    document.body.appendChild(f);
    f.submit();
    console.log("id = " + id);
}