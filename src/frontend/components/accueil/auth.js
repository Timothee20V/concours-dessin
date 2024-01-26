const userData = JSON.parse(localStorage.getItem('userData'));

if (!userData)  {
    localStorage.clear();
    window.location.href = '/';
}