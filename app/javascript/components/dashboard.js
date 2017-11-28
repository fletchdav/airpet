function initDashboardNavigation() {
  console.log("hello0");

  document.getElementById("tabresa1").addEventListener("click", () => {
    document.getElementById("resa1").classList.remove("hidden");
    document.getElementById("resa2").classList.add("hidden");
    document.getElementById("pets").classList.add("hidden");

    document.getElementById("tabresa1").classList.add("active");
    document.getElementById("tabresa2").classList.remove("active");
    document.getElementById("tabpets").classList.remove("active");
  });

  document.getElementById("tabresa2").addEventListener("click", () => {
    document.getElementById("resa1").classList.add("hidden");
    document.getElementById("resa2").classList.remove("hidden");
    document.getElementById("pets").classList.add("hidden");

    document.getElementById("tabresa1").classList.remove("active");
    document.getElementById("tabresa2").classList.add("active");
    document.getElementById("tabpets").classList.remove("active");
  });

  document.getElementById("tabpets").addEventListener("click", () => {
    document.getElementById("resa1").classList.add("hidden");
    document.getElementById("resa2").classList.add("hidden");
    document.getElementById("pets").classList.remove("hidden");

    document.getElementById("tabresa1").classList.remove("active");
    document.getElementById("tabresa2").classList.remove("active");
    document.getElementById("tabpets").classList.add("active");
  });
};

export { initDashboardNavigation };
