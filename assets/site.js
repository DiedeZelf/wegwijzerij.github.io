// Mobiel menu en lijntje onder de kop bij scrollen
(function () {
  var btn = document.querySelector('.nav-toggle');
  var nav = document.getElementById('hoofdmenu');
  var header = document.querySelector('.site-header');
  if (btn && nav) {
    btn.addEventListener('click', function () {
      var open = nav.classList.toggle('open');
      btn.setAttribute('aria-expanded', open ? 'true' : 'false');
      btn.setAttribute('aria-label', open ? 'Menu sluiten' : 'Menu openen');
      document.body.classList.toggle('menu-open', open);
    });
    document.addEventListener('keydown', function (e) {
      if (e.key === 'Escape' && nav.classList.contains('open')) btn.click();
    });
  }
  if (header) {
    var onScroll = function () { header.classList.toggle('scrolled', window.scrollY > 4); };
    window.addEventListener('scroll', onScroll, { passive: true });
    onScroll();
  }
})();
