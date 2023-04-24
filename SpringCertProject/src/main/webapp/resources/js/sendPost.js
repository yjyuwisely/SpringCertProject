/**
 * 
 */
function modify(id){
    let f = document.createElement('form');
    let obj;
    obj = document.createElement('input');
    obj.setAttribute('type', 'hidden');
    obj.setAttribute('name', 'id');
    obj.setAttribute('value', id);
    
    f.appendChild(obj);
    f.setAttribute('method', 'post');
    f.setAttribute('action', 'Diagnosis');
    document.body.appendChild(f);
    f.submit();
}