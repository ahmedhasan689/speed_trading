const mobileSearchBtn = document.querySelector('.mobile-search-btn')
const mobileSearchInput = document.querySelector('.mobile-search-input')
mobileSearchBtn.addEventListener('click', () => {
  mobileSearchInput.classList.toggle('active')
  mobileSearchInput.focus()
})


let heroSwiper = new Swiper(".heroSwiper", {
  slidesPerView: 1,
  centeredSlides: true,
  loop: true,
  spaceBetween: 30,
  pagination: {
    el: ".swiper-pagination",
    clickable: true,
  },
  navigation: {
    nextEl: ".hero-next",
    prevEl: ".hero-prev",
  },
  breakpoints: {
    768: {
      slidesPerView: "auto",
    },
  },
});


let favoriteSwiper = new Swiper(".favoriteSwiper", {
  slidesPerView: 1,
  spaceBetween: 30,
  breakpoints: {
    768: {
      slidesPerView: "auto",
    },
  },
});


let solutionsSwiper = new Swiper(".solutionsSwiper", {
  scrollbar: {
    el: ".swiper-scrollbar",
    hide: true,
  },
});
/*------------------- Slider -------------------*/
var swiper = new Swiper(".mySwiper", {
  
  spaceBetween: 10,
  slidesPerView: 4,
  watchSlidesProgress: true,
});
var swiper2 = new Swiper(".mySwiper2", {
  loop: true,
  spaceBetween: 10,
  thumbs: {
    swiper: swiper,
  },
});

/******************* */
