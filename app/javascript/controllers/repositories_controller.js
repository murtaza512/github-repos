import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["form", "frame"]

  submit() {
    const form = new FormData(this.formTarget)
    this.frameTarget.setAttribute("src", `${this.frameTarget.dataset.url}?${new URLSearchParams(form).toString()}`)
  }

  refresh() {
    this.frameTarget.setAttribute("src", this.frameTarget.dataset.url)
  }
}
