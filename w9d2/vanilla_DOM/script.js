document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!
  const favoriteList = document.querySelector(".favorite-submit");
  favoriteList.addEventListener("click", (event) => {
    event.preventDefault();
    const favoriteInputElement = document.querySelector(".favorite-input");
    const favoriteInput = favoriteInputElement.value;
    favoriteInputElement.value = "";
    const listPlaces = document.getElementById("sf-places");
    const newPlace = document.createElement("li");
    newPlace.textContent = favoriteInput;
    listPlaces.appendChild(newPlace);
  })
  // adding new photos

  // --- your code here!
  const showPhoto = document.querySelector(".photo-show-button");

  const submitPhoto = document.querySelector(".photo-url-submit");



});
