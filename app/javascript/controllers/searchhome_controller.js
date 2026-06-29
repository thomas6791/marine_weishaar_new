import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="searchhome"
export default class extends Controller {
  static targets = ["type_action"]
  connect() {
  }
  selectAction(event){
    let actionSelected = event.currentTarget.name
    let selectedInput = this.type_actionTargets.find(input => 
      input.name === actionSelected // ou 'acheter' selon votre formulaire
    )
    this.type_actionTargets.forEach((element) => {
      element.value = "0"
      element.parentElement.classList.remove("checked")
    });
    selectedInput.value = "1"
    selectedInput.parentElement.classList.add("checked")
  }
}
