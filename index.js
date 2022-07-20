import express from "express";
import db from "./config/Database.js";
import router from "./routes/index.js";
import dotenv from "dotenv";
import cookieParser from "cookie-parser";
import cors from "cors";
// Swagger Settings
// import swaggerUI from "swagger-ui-express";
// import apiDocumentation from "./apidocs.json";

// import ContohModel from "./models/ContohModel.js";

dotenv.config();

const app = express();

try {
  await db.authenticate();
  console.log("Database Connected . . .");

  /* membuat tabel hanya jika tabel belum ada
    await ContohModel.sync();
  */
} catch (error) {
  console.error(error);
}

// app.use("/api-docs", swaggerUI.serve, swaggerUI.setup(apiDocumentation));
app.use(cors({ credentials: true, origin: "http://localhost:2470" }));
app.use(cookieParser());
app.use(express.json());
app.use(router);
//caba midelware baru
// app.use("/karyawans", router);

app.listen(process.env.PORT || 2471, function () {
  console.log(
    "Express server listening on port %d in %s mode",
    this.address().port,
    app.settings.env
  );
});
