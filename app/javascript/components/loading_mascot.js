const loadingAnimation = () => {
  $(document).ready(function() {
    console.log("hi")
    // hide mascot
    const mascot = document.querySelector(".mascot");
    if (mascot) {
      $(".mascot").hide();
      const mascot = document.querySelector(".mascot");
      mascot.style.display = "none";
      const createBtn = document.getElementById("btn-color-green");
      createBtn.addEventListener('click', (event) => {
        mascot.style.display = "";
      });
    }


    // show mascot on AJAX start
    /*$(document).ajaxStart(function(){
      $(".mascot").show();
    });*/

    // hide mascot on AJAX stop
   /* $(document).ajaxStop(function(){
      $(".mascot").hide();
    });*/

  });
}
export {loadingAnimation}
