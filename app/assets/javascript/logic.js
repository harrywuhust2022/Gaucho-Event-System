document.addEventListener("DOMContentLoaded", function() {
    var searchInput = document.getElementById('navbarSearchInput');
    var searchButton = document.getElementById('navbarSearchButton');
    console.log("QQQQQQQQ")
  
    searchInput.addEventListener('input', function() {
      searchButton.disabled = !this.value;
      console.log("SSSSSSS")
      console.log(searchInput);
    });
  });