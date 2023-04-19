import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"
// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: [`Hommes^1000\n `, "Femmes", "Enfants"],
      typeSpeed: 0,
      backSpeed: 0,
      fadeOut: true,
      startDelay: 2,
      loop: true,
      cursorChar: '',
    })
  }
}
