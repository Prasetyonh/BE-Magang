import sequelize from "sequelize";

const db = new sequelize("project-bersama", "root", "", {
  host: "localhost",
  dialect: "mysql",
});

export default db;
