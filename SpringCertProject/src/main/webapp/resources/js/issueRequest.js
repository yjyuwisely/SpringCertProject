/**
 * 층명서 신청페이지 post 처리
 */
console.log("issueRequest connect");


function movingToIssue(id){
	let f = document.createElement('form');
    let objId;
    let objName;
    objId = document.createElement('input');
    objId.setAttribute('type', 'hidden');
    objId.setAttribute('name', 'id');
    objId.setAttribute('value', id);
    
    f.appendChild(objId);
    f.setAttribute('method', 'post');
    f.setAttribute('action', 'Issue');
    document.body.appendChild(f);
    f.submit();
}

function GeneralRequest(id){
	let f = document.createElement('form');
    let objId;
    let objName;
    objId = document.createElement('input');
    objId.setAttribute('type', 'hidden');
    objId.setAttribute('name', 'id');
    objId.setAttribute('value', id);
    
    f.appendChild(objId);
    f.setAttribute('method', 'post');
    f.setAttribute('action', 'GeneralDown');
    document.body.appendChild(f);
    f.submit();
}

function InOutRequest(id){
	let f = document.createElement('form');
    let objId;
    let objName;
    objId = document.createElement('input');
    objId.setAttribute('type', 'hidden');
    objId.setAttribute('name', 'id');
    objId.setAttribute('value', id);
    
    f.appendChild(objId);
    f.setAttribute('method', 'post');
    f.setAttribute('action', 'InoutDown');
    document.body.appendChild(f);
    f.submit();
}

function SergRequest(id){
	let f = document.createElement('form');
    let objId;
    let objName;
    objId = document.createElement('input');
    objId.setAttribute('type', 'hidden');
    objId.setAttribute('name', 'id');
    objId.setAttribute('value', id);
    
    f.appendChild(objId);
    f.setAttribute('method', 'post');
    f.setAttribute('action', 'SergDown');
    document.body.appendChild(f);
    f.submit();
}

