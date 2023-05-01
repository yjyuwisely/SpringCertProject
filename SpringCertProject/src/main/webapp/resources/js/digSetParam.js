/**
 * 
 */
console.log("sendParam Connect");

function sendParam(){
	let form = document.createElement('form');
	form.setAttribute('method', 'post');
	form.setAttribute('action', 'digsubmit');
    
	id = document.getElementById("memId").value;
	console.log("id : "+id);
	Diagnostic = document.getElementById("Diagnostic").value;
	patientcode = document.getElementById("patientcode").value;
	admission_date = document.getElementById("admission_date").value;
	discharge_date = document.getElementById("discharge_date").value;
	surg_date = document.getElementById("surg_date").value;
	disease = document.getElementById("disease").value;
	operation = document.getElementById("operation").value;
	
    if(admission_date == ''){
    	admission_date='-';
    }
    if(discharge_date == ''){
    	discharge_date='-';
    }
    if(surg_date == ''){
    	surg_date='-';
    }
    if(operation == ''){
    	operation='-';
    }
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
    console.log("info : "+info.id)
    console.log("info : "+info.Diagnostic)
    if (patientcode === '-'){
    	Swal.fire(
				  '환자코드!',
				  '환자코드가 시급해요!',
				  'question'
				)
    	return false;
    }
    if (Diagnostic === null || Diagnostic === ''){
    	Swal.fire(
				  '진단!',
				  '환자는 진단이 필요해여!',
				  'question'
				)
    	return false;
    }
    if (disease === null || disease === ''){
    	Swal.fire(
				  '병!고통!',
				  '이환자는 뭔가 병이있어요!',
				  'question'
				)
    	return false;
    }
    for (const key in info){
    let obj;
    obj = document.createElement('input');
    obj.setAttribute('type', 'hidden');
    obj.setAttribute('name', key);
    obj.setAttribute('value', info[key]);
    
    console.log(obj);
    
    form.appendChild(obj)
    }
    console.log(document.body.appendChild(form))
    document.body.appendChild(form).submit();
}