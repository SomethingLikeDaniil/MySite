// navbar.js
document.addEventListener("DOMContentLoaded", () => {
    const navbar = document.getElementById('navbar');
    let lastScrollTop = 0;
    const threshold = 100;

    window.addEventListener('scroll', () => {
        let currentScroll = window.scrollY;

        if (currentScroll > lastScrollTop) {
            navbar.style.top = "0";
        } else {
            navbar.style.top = "-60vh";
        }
    });
});
