import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "button"]

  showForm(event) {
    const selectedType = event.currentTarget.dataset.formType
    this.formTargets.forEach(form => {
      form.classList.toggle('hidden-form', !form.id.includes(selectedType))
    })
    
    this.buttonTargets.forEach(button => {
      button.classList.toggle('btn-primary', button === event.currentTarget)
      button.classList.toggle('btn-outline-primary', button !== event.currentTarget)
    })
  }
}
