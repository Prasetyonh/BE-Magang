import express from "express";
import {
  getUsers,
  Register,
  Login,
  Logout,
  Forgot,
  getRoles,
  createRole,
} from "../controllers/Users.js";
import {
  createKaryawan,
  getAllKaryawans,
  updateKaryawan,
  deleteKaryawan,
  getKaryawan,
} from "../controllers/Karyawans.js";
import { verifyToken, adminOnly } from "../middleware/VerifyToken.js";
import { refreshToken } from "../controllers/RefreshToken.js";
import { createCuti, deleteCuti, getCuti } from "../controllers/Cuti.js";
import { getAllKaryawansResign } from "../controllers/Resign.js";

const router = express.Router();

// Users + Role
router.get("/users", verifyToken, adminOnly, getUsers);
router.post("/users", Register);
router.post("/login", Login);
router.get("/token", refreshToken);
router.delete("/logout", Logout);
router.put("/forgot", Forgot);
router.get("/roles", getRoles);
router.post("/roles", createRole);

// Karyawan
router.get("/karyawans", getAllKaryawans);
router.post("/karyawans", createKaryawan);
router.put("/karyawans/:user_id", updateKaryawan);
router.get("/karyawans/:user_id", getKaryawan);
router.delete("/karyawans/:id", deleteKaryawan);

// Cuti Karyawan
router.get("/cuti", getCuti);
router.post("/cuti", createCuti);
router.delete("/cuti/:id", deleteCuti);

router.get("/resign", getAllKaryawansResign);

export default router;
