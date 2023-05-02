import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  connect() {
    console.log("connected", this.element);

    flatpickr("#booking_start_time", {
      enableTime: true,
      dateFormat: "F j, Y h:i K",
    });
  }
}
