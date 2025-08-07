document.addEventListener("tDOMContentLoaded", function () {
  const toggleBtn = document.getElementById("toggleBtn");
  const navbar = document.getElementById("navbar");

  toggleBtn.addEventListener("click", function () {
    navbar.classList.toggle("invisible");
  });
});

document.addEventListener("DOMContentLoaded", function () {
  new Swiper(".mySwiper", {
    slidesPerView: 4,
    spaceBetween: 20,
    loop: true,
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
    breakpoints: {
      1024: { slidesPerView: 4 },
      768: { slidesPerView: 2 },
      0: { slidesPerView: 1 },
    },
  });
});
