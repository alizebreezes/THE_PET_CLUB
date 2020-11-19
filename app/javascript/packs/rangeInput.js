const rangeInput = document.querySelector(".pet-range-input");
const rangeValue = document.querySelector("#range-field-value");

const updateRange = (e) => {
  const value = e.target.value;
  console.log(value);
  rangeValue.innerText = `age is ${value}`;
}





const initRange = () => {
  if (rangeInput) {
    rangeInput.addEventListener("input", updateRange);
  }
}


export default initRange;
