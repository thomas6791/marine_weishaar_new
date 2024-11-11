import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filters"
export default class extends Controller {
  static targets = ["category_filtre","category_form"]
  connect() {
  }
  selectCategory(event){
    event.currentTarget.classList.toggle("filter_actif");
    Array.from(this.category_formTarget.querySelectorAll('input[type="checkbox"]'))
    //Array.from(this.category_selectTargets)
    debugger;
  }
  checkedSelect(event){
    this.category_formTarget.requestSubmit()
    event.currentTarget.parentElement.parentElement.parentElement.parentElement.classList.toggle("filter_actif");
    //console.log("checked")
  }
}
