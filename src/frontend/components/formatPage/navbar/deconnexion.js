const deconnexion = () => {
    console.log("deconnexion");
    //localStorage.removeItem("token");
    window.location = "./index.html";
}

document.getElementById("deconnexion").addEventListener("click", deconnexion);
