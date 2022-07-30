import jwt from "jsonwebtoken";
import Users from "../models/UserModel.js";

export const verifyToken = (req, res, next) => {
  const authHeader = req.headers["authorization"];

  // mengambil token
  const token = authHeader && authHeader.split(" ")[1];

  if (token == null) return res.sendStatus(401);

  jwt.verify(token, process.env.ACCESS_TOKEN_SECRET, (err, decoded) => {
    if (err) return res.sendStatus(403);
    req.email = decoded.email;
    next();
  });
};

export const adminOnly = async (req, res, next) => {
  const email = req.email;
  const user = await Users.findAll({
    where: {
      email,
    },
  });
  if (user[0].role !== 1)
    return res.sendStatus(403).json({ msg: "Maaf anda bukan Super Admin" });

  next();
};
