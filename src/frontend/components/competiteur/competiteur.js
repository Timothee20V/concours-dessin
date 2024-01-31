import Api from '../../service/api.js';

//Création d'un concours
document.addEventListener('DOMContentLoaded', function() {
    const form = document.querySelector('.concours-registration-form');

    form.addEventListener('submit', function(event) {
        event.preventDefault();

        const userData = JSON.parse(localStorage.getItem('userData'));

        const numConcours = document.querySelector('#concours-id').value;
        const numCompetiteur = userData.userId;

        const data = {
            numConcours: numConcours,
            numCompetiteur: numCompetiteur
        };

        console.log(data)

        Api.request('/backend/api/create/addParticipationCompetiteur.php', 'post', data)
            .then(response => {
                if (response.status === 'success') {
                    alert('Competiteur ajouté au concours');
                } else {
                    alert('Une erreur s\'est produite');
                }
            })
            .catch(() => {
                    console.error('Une erreur s\'est produite');
                }
            );
    });
});

document.addEventListener('DOMContentLoaded', function() {
    const form = document.querySelector('.drawing-submission-form');

    form.addEventListener('submit', function(event) {
        event.preventDefault();

        const userData = JSON.parse(localStorage.getItem('userData'));

        const numConcours = document.querySelector('#drawing-concours-id').value;
        const dateRemise =  new Date().toISOString().split('T')[0];
        const leDessin = document.querySelector('#drawing-file').value;
        const commentaire = document.querySelector('#drawing-comment').value;
        const numCompetiteur = userData.userId;

        const data = {
            numConcours: numConcours,
            numCompetiteur: numCompetiteur,
            dateRemise: dateRemise,
            leDessin: leDessin,
            commentaire: commentaire,
            classement: null,
            numJury: null
        };

        console.log(data)

        Api.request('/backend/api/create/createDessin.php', 'post', data)
            .then(response => {
                if (response.status === 'success') {
                    alert('Dessin ajouté au concours');
                } else {
                    alert('Une erreur s\'est produite');
                }
            })
            .catch(() => {
                    console.error('Une erreur s\'est produite');
                }
            );
    });
});

// Get data from API
const getDessins = () => {
    const urlDessin = '/backend/api/get/getDessinsParCompetiteur.php?numCompetiteur=' + userData.userId;
    Api.request(urlDessin, 'get')
        .then(response => {
            if (response) {

                console.log(response);
                const tableBody = document.querySelector('.result-table');

                tableBody.innerHTML = '';

                const titleRow = document.createElement('tr');
                const titleCell1 = document.createElement('th');
                titleCell1.textContent = "ID";
                titleRow.appendChild(titleCell1);
                const titleCell2 = document.createElement('th');
                titleCell2.textContent = "Commentaire";
                titleRow.appendChild(titleCell2);
                const titleCell3 = document.createElement('th');
                titleCell3.textContent = "Classement";
                titleRow.appendChild(titleCell3);
                const titleCell4 = document.createElement('th');
                titleCell4.textContent = "Date de remise";
                titleRow.appendChild(titleCell4);
                const titleCell5 = document.createElement('th');
                titleCell5.textContent = "Dessin";
                titleRow.appendChild(titleCell5);
                const titleCell6 = document.createElement('th');
                titleCell6.textContent = "Concours";
                titleRow.appendChild(titleCell6);

                tableBody.appendChild(titleRow);

                if (response.length !== 0) {
                    response.forEach(item => {
                        const row = document.createElement('tr');

                        for (const property in item) {
                            const cell = document.createElement('td');
                            cell.textContent = item[property];
                            row.appendChild(cell);
                        }

                        tableBody.appendChild(row);
                    });
                } else {
                    const row = document.createElement('tr');
                    const cell = document.createElement('td');
                    cell.textContent = 'Aucun dessin trouvé';
                    cell.colSpan = 6;
                    row.appendChild(cell);
                    tableBody.appendChild(row);
                }

            } else {
                console.error('Une erreur s\'est produite');
            }
        })
        .catch(() => {
            console.error('Une erreur s\'est produite');
        });
}

document.addEventListener('DOMContentLoaded', getDessins);
