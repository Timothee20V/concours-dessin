class CustomFooter extends HTMLElement {
    constructor() {
        super();
    }

    connectedCallback() {
        this.innerHTML = `
            <style>
                footer {
                    margin: auto auto 0;
                    width: 80vw;
                    background-color: #f8f9fa; 
                }
            </style>
            
            <footer>
                <div>
                    <p>Copyright &copy; 2024 VotreNom</p>
                    <p><a href="mailto:youremail@domain.com">youremail@domain.com</a></p>
                </div>
            </footer>`;
    }
}

customElements.define('custom-footer', CustomFooter);