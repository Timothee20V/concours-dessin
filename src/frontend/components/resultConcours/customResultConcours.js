class CustomResultConcours extends HTMLElement {
    constructor() {
        super();
    }

    connectedCallback() {
        this.innerHTML = `
            <style>
                .result-table {
                    display: table;
                    border-collapse: collapse;
                    width: 100%;
                }
                
                .title {
                    background-color: #f8f9fa;
                    border-bottom: 1px solid #ddd;
                    box-shadow: 0 0 4px rgba(0, 0, 0, 0.1);
                    display: table-row;
                }
                
                .result {
                    padding: 0.75rem;
                    vertical-align: top;
                    border-top: 1px solid #dee2e6;
                    background-color: #fffff;
                }
                
                table tr:nth-child(even) {
                    background-color: lightgray;
                }
            </style>
            
            <table class="result-table">
            
                <tr class="title">
                    <th>Nom</th>
                    <th>Prenom</th>
                    <th>Club</th>
                    <th>Classement</th>
                    <th>Score</th>
                </tr>
            
                <div class="result">
                    <tr>
                        <td>Habitudes alimentaires</td>
                        <td>Mange tous les restes</td>
                        <td>Grignote la nourriture</td>
                        <td>Mange copieusement</td>
                        <td>Mange jusqu'à ce qu'il éclate</td>
                    </tr>
                    <tr>
                        <td>Habitudes alimentaires</td>
                        <td>Mange tous les restes</td>
                        <td>Grignote la nourriture</td>
                        <td>Mange copieusement</td>
                        <td>Mange jusqu'à ce qu'il éclate</td>
                    </tr>
                    <tr>
                        <td>Habitudes alimentaires</td>
                        <td>Mange tous les restes</td>
                        <td>Grignote la nourriture</td>
                        <td>Mange copieusement</td>
                        <td>Mange jusqu'à ce qu'il éclate</td>
                    </tr>
                    <tr>
                        <td>Habitudes alimentaires</td>
                        <td>Mange tous les restes</td>
                        <td>Grignote la nourriture</td>
                        <td>Mange copieusement</td>
                        <td>Mange jusqu'à ce qu'il éclate</td>
                    </tr>
                </div>
            </table>`;
    }
}

customElements.define('custom-result-concours', CustomResultConcours);