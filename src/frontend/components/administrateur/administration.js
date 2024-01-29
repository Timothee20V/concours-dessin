import Api from '../../service/api.js';

//Création d'un concours
document.addEventListener('DOMContentLoaded', function() {
    const form = document.querySelector('.menu-concours');

    form.addEventListener('submit', function(event) {
        event.preventDefault();

        const theme = document.querySelector('#concours-theme').value;
        const dateDebut = document.querySelector('#start-date').value;
        const dateFin = document.querySelector('#end-date').value;

        const data = {
            theme: theme,
            dateDebut: dateDebut,
            dateFin: dateFin,
            etat: "Non commence"
        };

        Api.request('/backend/api/create/createConcours.php', 'post', data)
            .then(response => {
                if (response.status === 'success') {
                    alert('Concours créé');
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

//Ajout d'un compétiteur
document.addEventListener('DOMContentLoaded', function() {
    const form = document.querySelector('.menu-competitor');

    form.addEventListener('submit', function(event) {
        event.preventDefault();

        const numCompetiteur = document.querySelector('#competitor-id').value;
        const datePremiereParticipation = document.querySelector('#competitor-premiereParticipation').value;

        const data = {
            datePremiereParticipation: datePremiereParticipation,
            numCompetiteur: numCompetiteur
        };

        Api.request('/backend/api/create/addCompetiteur.php', 'post', data)
            .then(response => {
                if (response.status === 'success') {
                    alert('Competiteur ajouté');
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

//Ajout d'un évaluateur
document.addEventListener('DOMContentLoaded', function() {
    const form = document.querySelector('.menu-evaluator');

    form.addEventListener('submit', function(event) {
        event.preventDefault();

        const numEvaluateur = document.querySelector('#evaluator-id').value;
        const specialite = document.querySelector('#evaluator-specialite').value;

        const data = {
            numEvaluateur: numEvaluateur,
            specialite: specialite
        };

        Api.request('/backend/api/create/addEvaluateur.php', 'post', data)
            .then(response => {
                if (response.status === 'success') {
                    alert('Evaluateur ajouté');
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

//Ajout d'un jury
document.addEventListener('DOMContentLoaded', function() {
    const form = document.querySelector('.menu-create-jury');

    form.addEventListener('submit', function(event) {
        event.preventDefault();

        const numConcours = document.querySelector('#concours-id').value;
        const numEvaluateur1 = document.querySelector('#evaluateur1-id').value;
        const numEvaluateur2 = document.querySelector('#evaluateur2-id').value;

        const data = {
            numConcours: numConcours,
            numEvaluateur1: numEvaluateur1,
            numEvaluateur2: numEvaluateur2
        };

        Api.request('/backend/api/create/createJury.php', 'post', data)
            .then(response => {
                if (response.status === 'success') {
                    alert('Jury ajouté');
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

//Association d'un jury à un dessin
document.addEventListener('DOMContentLoaded', function() {
    const form = document.querySelector('.menu-jury');

    form.addEventListener('submit', function(event) {
        event.preventDefault();

        const numJury = document.querySelector('#jury-id').value;
        const numDessin = document.querySelector('#drawing-id').value;

        const data = {
            numJury: numJury,
            numDessin: numDessin
        };

        Api.request('/backend/api/association/associateJuryDessin.php', 'post', data)
            .then(response => {
                if (response.status === 'success') {
                    alert('Jury associé à un dessin');
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
