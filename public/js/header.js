const highlight = document.querySelector(".glass-highlight");
const items = document.querySelectorAll(".nav-links li");
const navbar = document.querySelector(".navbar");

items.forEach(item => {
  item.addEventListener("mouseenter", () => {
    const itemRect = item.getBoundingClientRect();
    const navRect = navbar.getBoundingClientRect();

    highlight.style.left =
      itemRect.left - navRect.left + "px";

    highlight.style.width =
      itemRect.width + "px";

    highlight.style.opacity = "1";
    highlight.style.transform =
      "translateY(-50%) scale(1)";
  });
});

navbar.addEventListener("mouseleave", () => {
  highlight.style.opacity = "0";
  highlight.style.transform =
    "translateY(-50%) scale(0.96)";
});

const burger = document.querySelector(".burger");
const mobileMenu = document.querySelector(".mobile-menu");

burger.addEventListener("click", () => {
  burger.classList.toggle("active");
  mobileMenu.classList.toggle("open");
});