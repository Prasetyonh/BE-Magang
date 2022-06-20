import { Sequelize } from "sequelize";
import db from "../config/Database.js";

const { DataTypes } = Sequelize;

const Roles = db.define(
  "roles",
  {
    role_id: {
      type: DataTypes.INTEGER,
    },
    role_name: {
      type: DataTypes.STRING,
    },
  },
  {
    freezeTableName: true,
  }
);

export default Roles;
