window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;
function myFunction() {
    if (window.pageYOffset >= sticky) {
        navbar.classList.add("sticky");
        navbar.style.backgroundColor= "#cccccc"
        navbar.style.color ="black"
    } else {
        navbar.style.backgroundColor= "transparent";
        navbar.style.color = "white"
        navbar.classList.remove("sticky");
    }
}
(function () {
    const second = 1000,
          minute = second * 60,
          hour = minute * 60,
          day = hour * 24;
    let today = new Date(),
        dd = String(today.getDate()).padStart(2, "0"),
        mm = String(today.getMonth() + 1).padStart(2, "0"),
        yyyy = today.getFullYear(),
        nextYear = yyyy + 1,
        dayMonth = "06/30/",
        birthday = dayMonth + yyyy;
    today = mm + "/" + dd + "/" + yyyy;
    if (today > birthday) {
        birthday = dayMonth + nextYear;
    }
    const countDown = new Date(birthday).getTime(),
        x = setInterval(function() {    
            const now = new Date().getTime(),
                  distance = countDown - now;
            document.getElementById("days").innerText = Math.floor(distance / (day)),
              document.getElementById("hours").innerText = Math.floor((distance % (day)) / (hour)),
              document.getElementById("minutes").innerText = Math.floor((distance % (hour)) / (minute)),
              document.getElementById("seconds").innerText = Math.floor((distance % (minute)) / second);
        }, 0)
}());

let box = document.querySelector("div #Detail-left");
var observer = 
new IntersectionObserver(enteries => {
    enteries.forEach(entry =>{
        if(entry.isIntersecting){
        entry.target.style.opacity =1;
entry.target.style.transform = "translateX(0)"
}
})
})
observer.observe(box);

let rightbox = document.querySelector("div #Detail-right");
observer = 
 new IntersectionObserver(enteries => {
     enteries.forEach(entry =>{
         if(entry.isIntersecting){
         entry.target.style.opacity =1;
entry.target.style.transform = "translateX(0)";
}
})
})
observer.observe(rightbox);

let leftbox = document.querySelector("div #Detail-left1");
observer = 
new IntersectionObserver(enteries => {
    enteries.forEach(entry =>{
        if(entry.isIntersecting){
        entry.target.style.opacity =1;
entry.target.style.transform = "translateX(0)";
}
})
})
observer.observe(leftbox);

let cate = document.querySelector(".Categories");
observer = 
  new IntersectionObserver(enteries => {
      enteries.forEach(entry =>{
          if(entry.isIntersecting){
          entry.target.style.opacity =1;
entry.target.style.transform = "translateY(0)";
}
})
})
observer.observe(cate);

let Organ = document.querySelector(".Organ");
observer = 
  new IntersectionObserver(enteries => {
      enteries.forEach(entry =>{
          if(entry.isIntersecting){
          entry.target.style.opacity =1;
entry.target.style.transform = "translateY(0)";
}
})
})
observer.observe(Organ);

let Thanks = document.querySelector(".Thanks");
observer = 
  new IntersectionObserver(enteries => {
      enteries.forEach(entry =>{
          if(entry.isIntersecting){
          entry.target.style.opacity =1;
entry.target.style.transform = "translateY(0)";
}
})
})
observer.observe(Thanks);

