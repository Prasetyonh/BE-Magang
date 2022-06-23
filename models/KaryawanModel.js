import { Sequelize } from "sequelize";
import db from "../config/Database.js";

const { DataTypes } = Sequelize;

const Karyawan = db.define(
  "karyawan",
  {
    user_id: {
      type: DataTypes.STRING,
    },
    fullname: {
      type: DataTypes.STRING,
    },
    statuspernikahan: {
      type: DataTypes.STRING,
    },
    nik: {
      type: DataTypes.STRING,
    },
    identitas: {
      type: DataTypes.STRING,
    },
    divisi: {
      type: DataTypes.STRING,
    },
    tanggalmasuk: {
      type: DataTypes.STRING,
    },
    statuskaryawan: {
      type: DataTypes.STRING,
    },
    email: {
      type: DataTypes.STRING,
    },
    phone: {
      type: DataTypes.STRING,
    },
    alamat: {
      type: DataTypes.STRING,
    },
    posisi: {
      type: DataTypes.STRING,
    },
    site: {
      type: DataTypes.STRING,
    },
    telegram: {
      type: DataTypes.STRING,
    },
    createdby: {
      type: DataTypes.STRING,
    },
    createdate: {
      type: DataTypes.STRING,
    },
    pendidikan: {
      type: DataTypes.STRING,
    },
    institusi: {
      type: DataTypes.STRING,
    },
    tempatlahir: {
      type: DataTypes.STRING,
    },
    tanggallahir: {
      type: DataTypes.STRING,
    },
    status: {
      type: DataTypes.STRING,
    },
    role_trello: {
      type: DataTypes.STRING,
    },
    nikkaryawan: {
      type: DataTypes.STRING,
    },
    jurusan: {
      type: DataTypes.STRING,
    },
    createddby: {
      type: DataTypes.STRING,
    },
    tanggalresign: {
      type: DataTypes.STRING,
    },
    updateat: {
      type: DataTypes.STRING,
    },
  },
  {
    freezeTableName: true,
  }
);

export default Karyawan;
