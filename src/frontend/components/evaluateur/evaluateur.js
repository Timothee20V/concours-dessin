import Api from '../../service/api.js';

document.addEventListener('DOMContentLoaded', function() {
    const form = document.querySelector('.notation-dessin-form');

    form.addEventListener('submit', function(event) {

    const userData = JSON.parse(localStorage.getItem('userData'));

    const numEvaluateur = userData.userId;
    const numDessin = document.querySelector('#dessin-id').value;
    const dateEvaluation = new Date().toISOString().split('T')[0];
    const commentaire = document.querySelector('#dessin-commentaire').value;
    const note = document.querySelector('#dessin-note').value;

    const data = {
        dateEvaluation: dateEvaluation,
        note: note,
        commentaire: commentaire,
        numEvaluateur: numEvaluateur,
        numDessin: numDessin
    };

    console.log(data)

    Api.request('/backend/api/create/addEvaluation.php', 'post', data)
        .then(response => {
            if (response.status === 'success') {
                alert('Evaluation ajouté au concours');
            } else {
                console.log(response);
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
    const urlDessin = '/backend/api/get/getDessinsParEvaluateur.php?numEvaluateur=' + userData.userId;
    Api.request(urlDessin, 'get')
        .then(response => {
            if (response) {
                console.log(response);
                const tableBody = document.querySelector('.dessins-evaluation');

                tableBody.innerHTML = '';

                const titleRow = document.createElement('tr');
                const titleCell1 = document.createElement('th');
                titleCell1.textContent = "Numéro du concours";
                titleRow.appendChild(titleCell1);
                const titleCellId = document.createElement('th');
                titleCellId.textContent = "ID du dessin";
                titleRow.appendChild(titleCellId);
                const titleCell2 = document.createElement('th');
                titleCell2.textContent = "Dessin";
                titleRow.appendChild(titleCell2);
                const titleCell3 = document.createElement('th');
                titleCell3.textContent = "Commentaire du compétiteur";
                titleRow.appendChild(titleCell3);
                const titleCell4 = document.createElement('th');
                titleCell4.textContent = "Date de remise";
                titleRow.appendChild(titleCell4);
                const titleCell5 = document.createElement('th');
                titleCell5.textContent = "Note";
                titleRow.appendChild(titleCell5);
                const titleCell6 = document.createElement('th');
                titleCell6.textContent = "Commentaire de l'évaluateur";
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
                    cell.colSpan = 7;
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