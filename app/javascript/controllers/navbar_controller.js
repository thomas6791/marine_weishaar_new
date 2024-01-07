import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["grey","volets", "mainMobile","mobileVolet"]
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
  mobileMenu(event){
    event.currentTarget.classList.toggle("active")
    this.mobileVoletTargets[0].classList.toggle("visible")
  }
  voletPrev(event){
    //let indexLink = Array.from(event.currentTarget.parentElement.children).indexOf(event.currentTarget)
    let indexLink = this.mobileVoletTargets.indexOf(event.currentTarget.parentElement.parentElement)

    console.log(indexLink)
    //let prevLink = indexLink -1
    //debugger;
    this.mobileVoletTargets[indexLink].classList.remove("visible")
    this.mobileVoletTargets[0].classList.add("visible")
  }
  voletNext(event){
    let indexLink = Array.from(event.currentTarget.parentElement.children).indexOf(event.currentTarget)
    console.log(indexLink)
    indexLink = indexLink +1
    this.mobileVoletTargets[0].classList.remove("visible")
    this.mobileVoletTargets[indexLink].classList.add("visible")

  }
}
