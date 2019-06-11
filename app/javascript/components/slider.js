const sliderValue = () => {
  const sliders = document.querySelectorAll('.form-value-slider');
  sliders.forEach((slider) => {
    sliderValueChange(slider.id);
  });
  const bleedingValue = document.getElementById("bleeding-label");
};

const sliderValueChange = (id) => {
  const range = document.getElementById(id);
  range.addEventListener("change", () => {
    const label = document.getElementById(id + '_label');
    console.log(label);
    label.innerHTML = `${label.getAttribute('name')}: ${range.value}/5`;
  });
}

export { sliderValue };
