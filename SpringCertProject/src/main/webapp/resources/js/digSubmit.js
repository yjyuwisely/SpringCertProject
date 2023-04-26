/**
 * digSubmit진단서 작성완료버튼 href 스크립트, onclick하나로 해도 될거같은데
 */

function digInsert(id){
	let form = document.createElement('form');
	form.setAttribute('method', 'post');
	form.setAttribute('action', 'digsubmit');
    
	let patientVO = new Object();
	patientVO.id = id;
    
    const info = {
    	    'id': id
    	  };
    
    for (const key in info){
    let obj;
    obj = document.createElement('input');
    obj.setAttribute('type', 'hidden');
    obj.setAttribute('name', key);
    obj.setAttribute('value', info[key]);
    form.appendChild(obj);
    }
    
    document.body.appendChild(form);
    form.submit();
}