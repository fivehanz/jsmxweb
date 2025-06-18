import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="layout--navbar"
export default class extends Controller {
  // Define the targets that this controller will interact with in your HTML
  static targets = ["mobileMenu", "hamburgerIcon", "closeIcon"];

  connect() {}

  toggleMenu() {
    // Toggle the 'hidden' class on the mobile menu to show/hide it
    this.mobileMenuTarget.classList.toggle("hidden");

    // Toggle the 'hidden' class on the icons to switch between hamburger and close
    this.hamburgerIconTarget.classList.toggle("hidden");
    this.closeIconTarget.classList.toggle("hidden");
  }

  // You can optionally add actions to close the menu if a link is clicked
  // For example, if a user clicks a link in the mobile menu, you might want to close it:
  // You would add data-action="click->layout--navbar#closeMenu" to your <a> tags in the mobile menu
  closeMenu() {
    if (!this.mobileMenuTarget.classList.contains("hidden")) {
      this.mobileMenuTarget.classList.add("hidden");
      this.hamburgerIconTarget.classList.remove("hidden");
      this.closeIconTarget.classList.add("hidden");
    }
  }
}
