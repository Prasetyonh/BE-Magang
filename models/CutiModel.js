import { Sequelize } from "sequelize";
import db from "../config/Database.js";

const { DataTypes } = Sequelize;

const Cuti = db.define(
  "cuti",
  {
    user_id: {
      type: DataTypes.STRING,
    },
    name: {
      type: DataTypes.STRING,
    },
    tanggal: {
      type: DataTypes.STRING,
    },
    keterangan: {
      type: DataTypes.STRING,
    },
  },
  {
    freezeTableName: true,
  }
);

export default Cuti;
