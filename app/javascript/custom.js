// app/assets/javascripts/custom.js

document.addEventListener("DOMContentLoaded", () => {
  const slider = document.getElementById("weightSlider");
  const weightValue = document.getElementById("weightValue");

  // Initial value display
  weightValue.textContent = slider.value;

  // Update the displayed value when slider value changes
  slider.addEventListener("input", () => {
    weightValue.textContent = slider.value;
  });
});
