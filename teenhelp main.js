// Low Light Mode Toggle
const toggle = document.getElementById('lowLightToggle');
toggle.addEventListener('click', () => {
  const isLowLight = document.body.classList.toggle('lowlight');
  toggle.setAttribute('aria-pressed', isLowLight);
  toggle.textContent = isLowLight ? 'Normal Mode' : 'Low Light Mode';
});
