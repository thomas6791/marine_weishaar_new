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
    this.greyTarget.classList.add("visible")
    this.voletsTarget.classList.add("visible")
    
  }
  mouseOut(event) {
    this.greyTarget.classList.remove("visible")
    this.voletsTarget.classList.remove("visible")
    //alert("mouse Out")
    //event.currentTarget.querySelector(".dropdown-nav").style.visibility = "hidden";
    //this.menugreenTarget.classList.remove("visible");
  }
}
