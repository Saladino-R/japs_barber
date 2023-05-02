import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  connect() {
    console.log("connected", this.element);

    flatpickr("#booking_start_time", {
      enableTime: true,
      dateFormat: "F j, Y h:i K",
      minDate: "today",
      maxDate: new Date().fp_incr(25),
      disable: [
        function(date) {
            // return true to disable
            return (date.getDay() === 0 || date.getDay() === 7);

        }
      ],
      locale: {
          "firstDayOfWeek": 1 // start week on Monday
      }
    });
  }
}
