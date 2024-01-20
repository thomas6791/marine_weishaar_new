import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="annonce"
export default class extends Controller {
  static targets = ["cover","image"]
  initialize(){
    console.log("initialize stimulus")
    this.coverTargets[0].classList.add("visible")
  }
  connect() {
    console.log("annonce stimulus")
  }
  selectImg(event){
    console.log("img stimulus")
    let x = this.imageTargets.indexOf(event.currentTarget)
    this.coverTargets.forEach(element => {
      element.classList.remove("visible")
    });
    this.coverTargets[x].classList.add("visible")
  }

}
