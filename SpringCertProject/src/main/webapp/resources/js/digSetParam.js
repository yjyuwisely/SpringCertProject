/**
 * 
 */

console.log("sendParam Connect");

function sendParam(id, Diagnostic, patientcode, disease, operation){
	let form = document.createElement('form');
	form.setAttribute('method', 'post');
	form.setAttribute('action', 'digsubmit');
    
	id = document.getElementById("memId").value;
	Diagnostic = document.getElementById("Diagnostic").value;
	patientcode = document.getElementById("patientcode").value;
	admission_date = document.getElementById("start").value;
	discharge_date = document.getElementById("end").value;
	surg_date = document.getElementById("surg_date").value;
	disease = document.getElementById("disease").value;
	operation = document.getElementById("operation").value;
    
    const info = {
    		'id': id,
    	    'Diagnostic': Diagnostic,
    	    'patientcode': patientcode,
    	    'admission_date': admission_date,
    	    'discharge_date': discharge_date,
    	    'disease': disease,
    	    'operation': operation,
    	    'surg_date': surg_date,
    	  };
    
    for (const key in info){
    let obj;
    obj = document.createElement('input');
    obj.setAttribute('type', 'hidden');
    obj.setAttribute('name', key);
    obj.setAttribute('value', info[key]);
    form.appendChild(obj);
    }
    
    if (patientcode === '-'){
    	alert('환자 분류코드를 선택해주세요');
    	return false;
    }
    
    document.body.appendChild(form);
    form.submit();
}