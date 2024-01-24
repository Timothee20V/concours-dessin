class CustomNavbar extends HTMLElement {
    constructor() {
        super();
    }

    connectedCallback() {
        this.innerHTML = `
            <style>
                .navbar {
                    background-color: #f8f9fa;
                    border-bottom: 1px solid #ddd;
                    box-shadow: 0 0 4px rgba(0, 0, 0, 0.1);
                    margin: 0 auto;
                    padding: 1rem 0;
                    width: 90%;
                }
                
                .menu {
                    padding: 0;
                    margin: 0;
                    display: flex;
                    justify-content: space-between;
                    list-style-type: none;
}           </style>

            <nav class="navbar">
                <ul class="menu">
                    <li>Information</li>
                    <li class="push">
                    <button onclick='localStorage.clear(); window.location = "/";'>
                        Déconnexion
                    </button>
                    </li>
                </ul>
            </nav>`;
    }
}

customElements.define('custom-navbar', CustomNavbar);