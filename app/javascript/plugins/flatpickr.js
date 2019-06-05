import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

const openCalendar = () => {
  instance.open()
  const calendar = document.getElementById("day_date");
}


flatpickr(".datepicker", {
  // clickOpens: false,
  static: true,
  onReady: function(selectedDates, dateStr, instance) {
    instance.open()
  },
  onClose: function(selectedDates, dateStr, instance) {
    instance.open()
  }
})
