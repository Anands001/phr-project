
    let pass1 = document.querySelector('#pass1');
    let pass2 = document.querySelector('#pass2');
    let result = document.querySelector('#ps');
    
    
    
    function checkPassword () {
        result.innerText = pass1.value == pass2.value ?
        '' : 'Password does not match';
    }
    
    pass1.addEventListener('keyup', () => {
        if (pass2.value.length != 0) checkPassword();
    })
    
    pass2.addEventListener('keyup', checkPassword);
    
