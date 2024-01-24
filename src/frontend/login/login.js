import Api from '../service/api.js';

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

        console.log(data);

        Api.request('/backend/api/login.php', 'post', data)
            .then(response => {
                if (response.status === 'success') {
                    console.log('Success - redirecting to dashboard');
                    window.location.href = '../accueil/accueil.html';
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