const userData = JSON.parse(localStorage.getItem('userData'));

if (!userData)  {
    localStorage.clear();
    window.location.href = '/';
} else if (userData.role !== 'Administrateur') {
    window.location.href = '../accueil/';
}