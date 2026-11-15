// Mobiel menu: toont de links van het hoofdmenu in een volledig scherm.
(function () {
  var btn = document.querySelector('.hamburger-open-button');
  var nav = document.querySelector('nav[data-hook="menu-root"]');
  if (!btn || !nav) return;
  var panel = document.createElement('div');
  panel.className = 'ww-menu';
  panel.setAttribute('role', 'dialog');
  panel.setAttribute('aria-modal', 'true');
  panel.setAttribute('aria-label', 'Menu');
  var close = document.createElement('button');
  close.className = 'ww-menu-close';
  close.type = 'button';
  close.setAttribute('aria-label', 'Menu sluiten');
  close.innerHTML = '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><path d="M5 5l14 14M19 5L5 19"/></svg>';
  var ul = document.createElement('ul');
  nav.querySelectorAll('a[data-part="menu-item-link"]').forEach(function (a) {
    var li = document.createElement('li');
    var link = document.createElement('a');
    link.href = a.getAttribute('href');
    link.textContent = a.textContent.trim();
    if (a.getAttribute('aria-current')) link.setAttribute('aria-current', 'page');
    li.appendChild(link);
    ul.appendChild(li);
  });
  panel.appendChild(close);
  panel.appendChild(ul);
  document.body.appendChild(panel);
  function setOpen(open) {
    panel.classList.toggle('open', open);
    document.body.classList.toggle('ww-menu-open', open);
    btn.setAttribute('aria-expanded', open ? 'true' : 'false');
    (open ? close : btn).focus();
  }
  btn.addEventListener('click', function () { setOpen(true); });
  close.addEventListener('click', function () { setOpen(false); });
  document.addEventListener('keydown', function (e) { if (e.key === 'Escape' && panel.classList.contains('open')) setOpen(false); });
})();
