const userData = JSON.parse(localStorage.getItem('userData'));

if (!userData)  {
    localStorage.clear();
    window.location.href = '/';
} else if (userData.role !== 'Competiteur') {
    window.location.href = '../accueil/index.html';
}
