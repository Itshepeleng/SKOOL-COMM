document.addEventListener('DOMContentLoaded', () => {
  const navItems = document.querySelectorAll('.nav-item');
  const actionButtons = document.querySelectorAll('.button');

  navItems.forEach((item) => {
    item.addEventListener('click', (event) => {
      event.preventDefault();
      navItems.forEach((nav) => nav.classList.remove('active'));
      item.classList.add('active');
    });
  });

  actionButtons.forEach((button) => {
    button.addEventListener('click', () => {
      if (button.classList.contains('button-primary')) {
        button.textContent = 'Success';
        button.disabled = true;
        setTimeout(() => {
          button.textContent = 'New announcement';
          button.disabled = false;
        }, 1200);
      }
    });
  });
});
