import express from "express";
import { pool } from "./db";


const app = express();
const PORT = 3000;

app.get("/", (_req, res) => {
  res.send("Backend running");
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});

app.get("/health/db", async (_req, res) => {
  const result = await pool.query("SELECT NOW()");
  res.json({
    status: "ok",
    time: result.rows[0].now,
  });
});
