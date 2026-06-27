import "./style.css";

import { add } from "../wasm/math_wasm.wasm";

function main() {
  const app = document.getElementById("app");
  if (!(app instanceof HTMLDivElement)) {
    return;
  }

  const result = add(1, 2);
  console.log(result);

  app.textContent = `add(1, 2) = ${result}`;
}

main();
