const userData = JSON.parse(localStorage.getItem('userData'));

if ( !userData || userData.userRole !== 'President')  {
    localStorage.clear();
    window.location.href = '/';
}