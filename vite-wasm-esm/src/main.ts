import "./style.css";

function main() {
  const app = document.getElementById("app");
  if (!(app instanceof HTMLDivElement)) {
    return;
  }

  app.textContent = "Hello!";
}

main();
