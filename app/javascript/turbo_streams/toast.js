import { StreamActions } from "@hotwired/turbo"
import Toastify from "toastify-js"

StreamActions.toast = function() {
  const message = this.getAttribute("message")
  const position = this.getAttribute("position")
  Toastify({
    text: message,
    duration: 3000,
    destination: "",
    close: true,
    gravity: "top",
    position: position,
    stopOnFocus: true,
    style: {
      background: "linear-gradient(to right, #00b09b, #96c93d)",
    }
  }).showToast()
}