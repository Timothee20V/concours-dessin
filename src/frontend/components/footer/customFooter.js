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
                    background-color: rgba(255,255,255,0.62); 
                    border-radius: 20px 20px 0 0;
                }
                
                footer div {
                    padding: 10px 10px;
                    margin : 10px 0 0;
                }
            </style>
            
            <footer>
                <div>
                    <p>Copyright &copy; 2024 - Mathis DIBKE - Anthony DEVELAY - Baptiste DUPE - Timothée VIARD</p>
                    <a href="mailto:mathis.dibke@reseau.eseo.fr">mathis.dibke@reseau.eseo.fr</a>
                    <a href="mailto:anthnoy.develay@reseau.eseo.fr">anthony.develay@reseau.eseo.fr</a>
                    <a href="mailto:baptiste.dupe@reseau.eseo.fr">baptiste.dupe@reseau.eseo.fr</a>
                    <a href="mailto:timothee.viard@reseau.eseo.fr">timothee.viard@reseau.eseo.fr</a></p>
            </footer>`;
        }
    }

customElements.define('custom-footer', CustomFooter);