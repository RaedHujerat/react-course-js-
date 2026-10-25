import { students } from "./data.js";
import withStatus from "./report.js";

const report = withStatus(students);

for (const { name, status } of report) {
  console.log(`${name}: ${status}`);
}

console.log(students[0].status);
