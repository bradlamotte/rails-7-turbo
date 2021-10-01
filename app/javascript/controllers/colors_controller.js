import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="colors"
export default class extends Controller {
  static targets = [ "choice" ]

  choose(element) {
    this.choiceTarget.style.backgroundColor = element.target.innerHTML
  }
}
