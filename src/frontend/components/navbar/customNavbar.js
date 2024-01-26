class CustomNavbar extends HTMLElement {
    constructor() {
        super();
    }

    connectedCallback() {
        this.innerHTML = `
            <style>
                nav {
                    margin: 0 auto;
                    padding: 1rem 0;
                    width: 80vw;
                    position: sticky;
                    top: 0;
                    background-color: #f8f9fa;
                    border-bottom: 1px solid #ddd;
                    box-shadow: 0 0 4px rgba(0, 0, 0, 0.1);
                }
                
                .menu {
                    padding: 0;
                    margin: 0;
                    display: flex;
                    justify-content: space-between;
                    list-style-type: none;
                }           
            </style>

            <nav>
                <ul class="menu">
                    <li>
                        <a href="../accueil">Accueil</a>
                        <a href="../administrateur" required-role="Administrateur" class="page">Admin</a>
                        <a href="../competiteur" required-role="Competiteur" class="page">Competiteur</a>
                        <a href="../evaluateur" required-role="Evaluateur" class="page">Evaluateur</a>
                    </li>
                    <li>
                        <a href="/" class="logout">Déconnexion</a>
                    </li>
                </ul>
            </nav>`;
        this.addEventListeners();
    }
    addEventListeners() {
        const userData = JSON.parse(localStorage.getItem('userData'));

        this.querySelectorAll('.page').forEach(function(link) {
            link.addEventListener('click', function(event) {

                const requiredRole = this.getAttribute('required-role');

                if (userData.role !== requiredRole) {
                    event.preventDefault();
                    alert('Vous n\'avez pas le droit d\'accéder à cette page');
                }
            });
        });

        this.querySelector('.logout').addEventListener('click', function() {
            localStorage.clear();
            window.location = "/";
        });
    }
}

customElements.define('custom-navbar', CustomNavbar);