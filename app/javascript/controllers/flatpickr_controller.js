import { Controller } from '@hotwired/stimulus';
import flatpickr from 'flatpickr';
// import rangePlugin from 'flatpickr/dist/plugins/rangePlugin';
export default class extends Controller {
  connect() {
    const config = {
          minDate: "today",
          altInput: true,
          mode: 'range',
          dateFormat: "Y-m-d",
          onClose: function(_selectedDates, _dateStr, fp) => {
            if (fp.selectedDates.length === 1) {
              const startDate = fp.formatDate(fp.selectedDates[0], 'Y-m-d');
              document.getElementById('start_time').value = startDate;
            }
          }
    }
    console.log(startDate);
    flatpickr('#start_time', config);
  };
}


  //   const config = {
  //     minDate: "today",
  //     altInput: true,
  //     mode: 'range',
  //     weekNumbers: true,
  //     altFormat: "F j, Y",
  //     dateFormat: "Y-m-d",
  //     disable: "today",
  //     plugins: [new rangePlugin({ input: this.endTimeTarget })],
  //     onClose: (_, __, fp) => {
  //       if (fp.selectedDates.length === 2) {
  //         const startDate = fp.formatDate(fp.selectedDates[0], 'Y-m-d');
  //         const endDate = fp.formatDate(fp.selectedDates[1], 'Y-m-d');
  //             // document.getElementById('end_time').value = endDate;
                // document.getElementById('start_time').value = startDate;
    //       }
  //     },
  //   };
