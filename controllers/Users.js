import Users from "../models/UserModel.js";
import Roles from "../models/RoleModel.js";
import bcrypt, { compare } from "bcrypt";
import jwt from "jsonwebtoken";
import db from "../config/Database.js";

export const getUsers = async (req, res) => {
  try {
    const users = await db.query(
      `SELECT * FROM users LEFT JOIN roles ON users.role = roles.role_id`,
      {
        type: db.QueryTypes.SELECT,
      }
    );
    res.json(users);
  } catch (error) {
    console.log(error);
  }
};

export const getRoles = async (req, res) => {
  try {
    const roles = await Roles.findAll({
      attributes: ["role_id", "role_name"],
    });
    res.json(roles);
  } catch (error) {
    console.log(error);
  }
};

export const Register = async (req, res) => {
  const { name, email, password, confPassword, role } = req.body;

  const emailCheck = await Users.findOne({
    where: { email: email },
  });

  if (emailCheck)
    return res.status(400).json({ msg: "Email already registered" });

  if (password !== confPassword)
    return res
      .status(400)
      .json({ msg: "Password and Confirm Password don't match" });

  const roleCheck = await Roles.findOne({
    where: { role_id: role },
  });
  if (!roleCheck) return res.status(404).json({ msg: "Role not available" });

  const salt = await bcrypt.genSalt();
  const hashPassword = await bcrypt.hash(password, salt);
  try {
    await Users.create({
      name: name,
      email: email,
      password: hashPassword,
      role: role,
    });
    res.json({ msg: "Registration successful" });
  } catch (error) {
    console.log(error);
  }
};

export const Login = async (req, res) => {
  try {
    // cari user berdasarkan email
    const user = await Users.findAll({
      where: {
        email: req.body.email,
      },
    });

    // bandingin password yang user masukin dan yang di database, cocok atau tidak
    const match = await bcrypt.compare(req.body.password, user[0].password);

    //diperiksa di sini
    if (!match) return res.status(400).json({ msg: "Wrong Password" });

    const userId = user[0].id;
    const name = user[0].name;
    const email = user[0].email;

    const accessToken = jwt.sign(
      { userId, name, email },
      process.env.ACCESS_TOKEN_SECRET,
      {
        expiresIn: "20s",
      }
    );
    const refreshToken = jwt.sign(
      { userId, name, email },
      process.env.REFRESH_TOKEN_SECRET,
      {
        expiresIn: "1d",
      }
    );

    // simpan refreshToken dalam basis data
    await Users.update(
      { refresh_token: refreshToken },
      {
        where: {
          id: userId,
        },
      }
    );

    // cookie untuk client
    res.cookie("refreshToken", refreshToken, {
      httpOnly: true,
      maxAge: 24 * 60 * 60 * 1000,
      // secure: true, kalo server lokal tidak perlu ini
    });

    //memberikan respon ke client akses tokennya
    res.json({ accessToken });
  } catch (error) {
    // pesan yang ditampilkan jika user (email) tidak ketemu
    res.status(404).json({ msg: "Email not Found" });
  }
};

export const Logout = async (req, res) => {
  const refreshToken = req.cookies.refreshToken;
  if (!refreshToken) return res.sendStatus(204);
  const user = await Users.findAll({
    where: {
      refresh_token: refreshToken,
    },
  });

  if (!user[0]) return res.sendStatus(204);
  const userId = user[0].id;
  await Users.update(
    { refresh_token: null },
    {
      where: {
        id: userId,
      },
    }
  );
  res.clearCookie("refreshToken");
  return res.sendStatus(200);
};

export const Forgot = async (req, res) => {
  const { password, confPassword } = req.body;
  try {
    const user = await Users.findAll({
      where: {
        email: req.body.email,
      },
    });
    if (req.body.email !== user[0].email)
      return res.status(404).json({ msg: "Email not Found" });

    if (!password) return res.sendStatus(200);

    if (password !== confPassword) {
      res
        .status(400)
        .json({ msg: "Password and Confirm Password don't match" });
    } else {
      const salt = await bcrypt.genSalt();
      const hashPassword = await bcrypt.hash(password, salt);

      try {
        const data = { password: hashPassword };
        const condition = { where: { id: user[0].id } };

        await Users.update(data, condition);
        res.json({ msg: "Password changed" });
      } catch (error) {
        console.log(error);
      }
    }
  } catch (error) {
    res.status(404).json({ msg: "Email not found" });
  }
};

export const createRole = async (req, res) => {
  const { role_id, role_name } = req.body;

  try {
    await Roles.create({
      role_id: role_id,
      role_name: role_name,
    });
    res.json({ msg: "New role added" });
  } catch (error) {
    console.log(error);
  }
};
