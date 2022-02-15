const initCookies = () => {
  const cookiesBanner = document.querySelector('#cookies-banner');
  const cookiesButton = document.querySelector('#cookies-btn');

  if (cookiesBanner && cookiesButton) {
    cookiesButton.addEventListener('click', () => {
      cookiesBanner.style.display = 'none';
    });
  }
};

export { initCookies };
