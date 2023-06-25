const toggleBtn = document.querySelector(".toggle"),
      closeCartBtn = document.querySelector(".close-nav"), 
      navDOM = document.querySelector(".navbar-details"),
      navBarOverlay = document.querySelector(".navbar-overlay");

//  Toggle Cart
toggleBtn.addEventListener("click", () => {
    navBarOverlay.classList.add("transparentBcg");
    navDOM.classList.add("showNav"); 
  });
  
  closeCartBtn.addEventListener("click", () => {
navBarOverlay.classList.remove("transparentBcg");
navDOM.classList.remove("showNav"); 
});


$(".carousel").owlCarousel({
    margin:10,
    loop: true,
    autoplay:true,
    autoplayTimeout:5000,
    autoplayHoverPause:true,
    responsive: {
          0: {
            items:1,
            nav:false,
          },
          768: {
            items:2,
            nav:false,
          },
          1000: {
            items:3,
            nav:false,
          },
          1400: {
            items:3,
            nav:false,
          },
          1500: {
            items:3,
            nav:true,
          }
    }

})

// const info = document.querySelectorAll(".member-info p"),
  const toggleTextBtns = document.querySelectorAll(".toggle-text");

      toggleTextBtns.forEach(( toggleTextBtn) => {
        toggleTextBtn.addEventListener("click", (e) => {
           const popupMenus = e.currentTarget.parentElement.parentElement.parentElement.nextElementSibling;  
            popupMenus.classList.toggle("show-info");
            console.log("click");
          })
         
      })

const date = document.getElementById("date");
date.innerHTML = new Date().getFullYear();
