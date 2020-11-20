const updateRange = (e) => {
  const rangeValue = document.querySelector("#range-field-value");
  const value = e.target.value;
  rangeValue.innerText = `pets up to ${value} years old`;
}

const initRange = () => {
  const rangeInput = document.querySelector(".pet-range-input");

  if (rangeInput) {
    rangeInput.addEventListener("input", updateRange);
  }
}

export default initRange;
