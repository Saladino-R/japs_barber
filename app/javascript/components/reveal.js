export const revealto = () => {
  window.addEventListener('scroll', reveal);

  function reveal(){
    console.log('hello');
    var reveals = document.querySelectorAll('.reveal');

    for(var i = 0; i < reveals.length; i++) {

    var windowheight = window.innerHeight;
    var revealtop = reveals[i].getBoundingClientRect().top;
    var revealpoint = 150;

      if(revealtop < windowheight - revealpoint){
        reveals[i].classList.add('animate__fadeInUp');
      }
    }
  }
}