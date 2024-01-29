class CustomResultsConcours extends HTMLElement {
    constructor() {
        super();
    }

    connectedCallback() {
        this.innerHTML = `
            <style>
                .result-table-concours {
                    display: table;
                    border-collapse: collapse;
                    width: 100%;
                }
                
                .title {
                    background-color: #f8f9fa;
                    /*border-bottom: 1px solid #ddd;*/
                    box-shadow: 0 0 4px rgba(0, 0, 0, 0.1);
                    display: table-row;
                }
                
                .result {
                    padding: 0.75rem;
                    text-align: center;
                    background-color: grey;
                }
                
                .result-table tr:nth-child(even) {
                    background-color: lightgray;
                }
                
            </style>
                        
            <table class="result-table-concours"></table>`;
    }
}

customElements.define('custom-result-concours', CustomResultsConcours);