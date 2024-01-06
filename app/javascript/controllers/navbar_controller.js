import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["grey","volets"]
  connect() {
    console.log("hello from navbar")
  }
  mouseOver(event) {
    //event.currentTarget.querySelector(".dropdown-nav").style.visibility = "visible";
    //let heightList = event.currentTarget.querySelector(".dropdown-nav").offsetHeight;
    //alert("mouse Over")
    //this.menugreenTarget.classList.add("visible");
    let indexVolet = Array.from(event.currentTarget.parentElement.children).indexOf(event.currentTarget)
    this.greyTarget.classList.add("visible")
    this.voletsTargets[indexVolet].classList.add("visible")

    
    
  }
  mouseOut(event) {
    let indexVolet = Array.from(event.currentTarget.parentElement.children).indexOf(event.currentTarget)
    this.greyTarget.classList.remove("visible")
    this.voletsTargets[indexVolet].classList.remove("visible")
    //alert("mouse Out")
    //event.currentTarget.querySelector(".dropdown-nav").style.visibility = "hidden";
    //this.menugreenTarget.classList.remove("visible");
  }
}
