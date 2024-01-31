import Api from "../../service/api.js";

const getConcours = () => {
    const urlConcours = '/backend/api/get/getResultsConcours.php?numCompetiteur=' + userData.userId;
    Api.request(urlConcours, 'get')
        .then(response => {
            if (response) {

                const tableBody = document.querySelector('.result-table-concours');

                tableBody.innerHTML = '';

                const titleRow = document.createElement('tr');
                const titleCell1 = document.createElement('th');
                titleCell1.textContent = "ID";
                titleRow.appendChild(titleCell1);
                const titleCell2 = document.createElement('th');
                titleCell2.textContent = "Theme";
                titleRow.appendChild(titleCell2);
                const titleCell3 = document.createElement('th');
                titleCell3.textContent = "Date de début";
                titleRow.appendChild(titleCell3);
                const titleCell4 = document.createElement('th');
                titleCell4.textContent = "Date de fin";
                titleRow.appendChild(titleCell4);
                const titleCell5 = document.createElement('th');
                titleCell5.textContent = "ID du meilleur dessin";
                titleRow.appendChild(titleCell5);
                const titleCell6 = document.createElement('th');
                titleCell6.textContent = "Classement du meilleur dessin";
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
                    cell.textContent = 'Aucun concours trouvé';
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

document.addEventListener('DOMContentLoaded', getConcours);