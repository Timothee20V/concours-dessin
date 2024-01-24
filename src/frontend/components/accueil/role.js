import Api from "/frontend/service/api.js";

document.getElementById("getRole").addEventListener("click", ()=> {

    Api.request('/backend/api/role.php', 'get')
        .then(response => {
            if (response.role) {
                alert('Vous êtes connecté en tant que ' + response.role);
                console.log(response.role);
            } else {
                alert('Erreur - identifiants invalides');
                console.log('Error - invalid credentials');
            }
        })
        .catch(error => {
                console.error('Une erreur s\'est produite');
            }
        );

});