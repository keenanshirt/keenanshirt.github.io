/*
 * widget-frame.js
 *
 * Reports this page's rendered height to whatever window is framing it, so a
 * host page can resize the iframe instead of scrolling inside a fixed box.
 *
 * The host page is optional -- if nobody is listening, these messages are
 * simply discarded and the iframe keeps its hard-coded height attribute.
 *
 * Host-side listener (add to ofa.fas.harvard.edu if/when you can run JS there):
 *
 *   window.addEventListener('message', function (e) {
 *     if (e.origin !== 'https://keenanshirt.github.io') return;
 *     var d = e.data;
 *     if (!d || d.type !== 'ofa-widget-height') return;
 *     var f = document.querySelector('iframe[data-widget-id="' + d.id + '"]');
 *     if (f) f.style.height = d.height + 'px';
 *   });
 */
(function () {
  'use strict';

  var script = document.currentScript ||
               document.querySelector('script[data-widget-id]');
  var widgetId = script ? script.getAttribute('data-widget-id') : null;
  var lastSent = 0;

  // Measure the widget container, not the document: html/body stretch to fill
  // the iframe's viewport, so a short widget would otherwise report the frame's
  // own height straight back and the host could never shrink it.
  function measure() {
    var el = document.getElementById('widget');
    if (el) {
      return Math.ceil(el.getBoundingClientRect().bottom + window.pageYOffset);
    }
    return Math.ceil(document.body ? document.body.scrollHeight : 0);
  }

  function send() {
    var height = measure();
    if (!height || height === lastSent) return;
    lastSent = height;
    try {
      window.parent.postMessage(
        { type: 'ofa-widget-height', id: widgetId, height: height },
        '*'
      );
    } catch (e) { /* framed by nobody, or blocked -- nothing to do */ }
  }

  // LiveWhale marks its event photos loading="lazy", but it injects them after
  // this document has already fired 'load', and Chrome never runs its
  // lazy-load check on images added to an already-complete document that it
  // isn't scrolling. The result is permanently blank image slots. These frames
  // hold one widget each, so eager loading is the right call anyway.
  function unlazy() {
    var imgs = document.querySelectorAll('#widget img[loading="lazy"]');
    for (var i = 0; i < imgs.length; i++) {
      imgs[i].setAttribute('loading', 'eager');
    }
  }

  function refresh() {
    unlazy();
    send();
  }

  // The widget renders asynchronously (XHR + late-injected stylesheets), and
  // images settle later still, so re-check on every signal we can get.
  if (window.MutationObserver) {
    new MutationObserver(refresh).observe(
      document.getElementById('widget') || document.body,
      { childList: true, subtree: true }
    );
  }
  if (window.ResizeObserver) {
    new ResizeObserver(send).observe(document.documentElement);
  }
  window.addEventListener('load', refresh);
  window.addEventListener('resize', send);
  document.addEventListener('DOMContentLoaded', refresh);
  [250, 750, 1500, 3000, 6000].forEach(function (ms) {
    window.setTimeout(refresh, ms);
  });
})();
