
const Api = {

    async request(endpoint, method = "get", data = null) {
        try {
            const options = {
                method,
                headers: {
                    'Content-Type': 'application/json'
                }
            };

            if (data) {
                options.body = JSON.stringify(data);
            }

            const response = await fetch(endpoint, options);

            return await response.json();
        } catch (error) {
            console.log(error)
            throw error;
        }
    }

};

export default Api;