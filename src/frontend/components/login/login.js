import Api from '../../service/api.js';

document.addEventListener('DOMContentLoaded', function() {
    const form = document.querySelector('form');

    form.addEventListener('submit', function(event) {
        event.preventDefault();

        const username = document.querySelector('#username').value;
        const password = document.querySelector('#password').value;

        const data = {
            username,
            password
        };

        Api.request('/backend/api/login.php', 'post', data)
            .then(response => {
                if (response.status === 'success') {
                    const userData = {
                        userId: response.id,
                        login: response.login,
                        name: response.name,
                        surname: response.surname,
                        userRole: response.role
                    };
                    localStorage.setItem('userData', JSON.stringify(userData));

                    window.location.href = '../accueil/accueil.html';
                    alert('Vous êtes connecté en tant que : ' + response.role);
                } else {
                    console.log('Error - invalid credentials');
                    alert('Nom d\'utilisateur ou mot de passe incorrect');
                }
            })
            .catch(error => {
                    console.error('Une erreur s\'est produite');
                }
            );
    });
});