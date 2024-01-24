class CustomFooter extends HTMLElement {
    constructor() {
        super();
    }

    connectedCallback() {
        this.innerHTML = `
            <style>
                .footer {
                    position: fixed;
                    bottom: 0;
                    width: 100%;
                    background-color: #f8f9fa; 
                }
            </style>
            
            <footer class="footer">
                <div>
                    <p>Copyright &copy; 2024 VotreNom</p>
                    <p><a href="mailto:youremail@domain.com">youremail@domain.com</a></p>
                </div>
            </footer>`;
    }
}

customElements.define('custom-footer', CustomFooter);