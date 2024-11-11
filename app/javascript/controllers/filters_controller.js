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
  checkedSelect(){
    this.category_formTarget.submit();
  }
}
