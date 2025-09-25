/*!
* Start Bootstrap - Full Width Pics v5.0.4 (https://startbootstrap.com/template/full-width-pics)
* Copyright 2013-2021 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-full-width-pics/blob/master/LICENSE)
*/
// This file is intentionally blank
// Use this file to add JavaScript to your project
 // Hero Animated Text
  const texts = ["Innovation & Research", "Excellence in Education", "Student Success"];
  let index=0;
  const heroText = document.getElementById('hero-text');
  setInterval(()=>{
    index = (index + 1) % texts.length;
    heroText.textContent = "SIR CRR College of Engineering - " + texts[index];
  }, 3000);

  // Animated Counters
  const counters = document.querySelectorAll('.counter');
  counters.forEach(counter=>{
    const updateCount = ()=>{
      const target = +counter.getAttribute('data-target');
      const count = +counter.innerText;
      const increment = target/200;
      if(count < target){
        counter.innerText = Math.ceil(count+increment);
        setTimeout(updateCount,15);
      } else {
        counter.innerText = target;
      }
    }
    updateCount();
  });
  new Swiper('.card-wrapper', {
    loop: true,
    spaceBetween: 30,

    // Pagination bullets
    pagination: {
        el: '.swiper-pagination',
        clickable: true,
        dynamicBullets: true
    },

    // Navigation arrows
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },

    // Responsive breakpoints
    breakpoints: {
        0: {
            slidesPerView: 1
        },
        768: {
            slidesPerView: 2
        },
        1024: {
            slidesPerView: 3
        }
    }
});

