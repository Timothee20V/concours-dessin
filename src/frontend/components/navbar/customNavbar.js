class CustomNavbar extends HTMLElement {
    constructor() {
        super();
    }

    connectedCallback() {
        this.innerHTML = `
            <style>
                nav {
                    margin: 0 auto 15px;
                    padding: 0.5rem 0;
                    width: 80vw;
                    position: sticky;
                    top: 0;
                    background-color: rgba(255,255,255,0.62); 
                    border-radius: 0 0 20px 20px;
                }
                
                .menu {
                    padding: 0 10px;
                    margin: 0;
                    display: flex;
                    justify-content: space-between;
                    list-style-type: none;
                    align-items: center;
                    a {
                        text-decoration: none;
                        border-radius: 5px;
                        transition: all 0.3s ease-in-out;
                        padding: 5px 10px;
                    }       
                    
                    .pages {
                        display: flex;
                        gap: 20px;
                        a {
                            color: #363636;
                            border: 2px solid #363636;
                            font-weight: bold;
                        }
                        
                        a:hover {
                        background-color: #363636;
                        color: #fff;
                        }
                    }
                    
                    .logout {
                        a {
                            color: #363636;
                            border: 2px solid #363636;
                            font-weight: bold;
                        }
                        a:hover {
                        background-color: #363636;
                        color: #ea1616; 
                        }
                    
                    }
                }    

            </style>

            <nav>
                <ul class="menu">
                    <li class="pages">
                        <a href="../accueil">Accueil</a>
                        <a href="../administrateur" required-role="Administrateur" class="page">Admin</a>
                        <a href="../competiteur" required-role="Competiteur" class="page">Competiteur</a>
                        <a href="../evaluateur" required-role="Evaluateur" class="page">Evaluateur</a>
                    </li>
                    <li class="logout">
                        <a href="/" class="logout">Déconnexion</a>
                    </li>
                </ul>
            </nav>`;
        this.addEventListeners();
    }

    addEventListeners() {
        const userData = JSON.parse(localStorage.getItem('userData'));

        this.querySelectorAll('.page').forEach(function (link) {
            link.addEventListener('click', function (event) {

                const requiredRole = this.getAttribute('required-role');

                if (userData.role !== requiredRole) {
                    event.preventDefault();
                    alert('Vous n\'avez pas le droit d\'accéder à cette page');
                }
            });
        });

        this.querySelector('.logout').addEventListener('click', function () {
            localStorage.clear();
            window.location = "/";
        });
    }
}

customElements.define('custom-navbar', CustomNavbar);