import Cuti from "../models/CutiModel.js";
import Karyawan from "../models/KaryawanModel.js";

export const getAllKaryawans = async (req, res) => {
  try {
    const employees = await Karyawan.findAll({
      attributes: [
        "id",
        "user_id",
        "fullname",
        "statuspernikahan",
        "nik",
        "identitas",
        "divisi",
        "tanggalmasuk",
        "statuskaryawan",
        "email",
        "phone",
        "alamat",
        "posisi",
        "site",
        "telegram",
        "createdby",
        "createdate",
        "pendidikan",
        "institusi",
        "tempatlahir",
        "tanggallahir",
        "status",
        "role_trello",
        "nikkaryawan",
        "jurusan",
      ],
      where: { status: "active" },
    });
    res.json(employees);
  } catch (error) {
    console.log(error);
  }
};

export const getKaryawan = async (req, res) => {
  // dapetin id
  const path = req.path;
  const user_id = path && path.split("/")[2];

  try {
    const employee = await Karyawan.findOne({
      attributes: [
        "id",
        "user_id",
        "fullname",
        "statuspernikahan",
        "nik",
        "identitas",
        "divisi",
        "tanggalmasuk",
        "statuskaryawan",
        "email",
        "phone",
        "alamat",
        "posisi",
        "site",
        "telegram",
        "createdby",
        "createdate",
        "pendidikan",
        "institusi",
        "tempatlahir",
        "tanggallahir",
        "status",
        "role_trello",
        "nikkaryawan",
        "jurusan",
      ],
      where: [{ user_id: user_id }],
    });
    if (employee) return res.json(employee);

    res.sendStatus(404);
  } catch (error) {
    console.log(error);
  }
};

export const createKaryawan = async (req, res) => {
  const employee = await Karyawan.findOne({
    where: { user_id: req.body.user_id },
  });
  if (employee)
    return res.status(400).json({ msg: "User Id already registered" });

  try {
    await Karyawan.create(req.body);
    res.json({ msg: "Employee created" });
  } catch (error) {
    console.log(error);
  }
};

export const updateKaryawan = async (req, res) => {
  // dapetin id
  const path = req.path;
  const user_id = path && path.split("/")[2];

  const actionType = "put";
  const data = req.body;
  const condition = { where: { user_id: user_id } };

  const userIdCheck = await Karyawan.findOne({
    where: { user_id: user_id },
  });

  const furlough = await Cuti.findAll({
    where: { id_karyawan: user_id },
  });

  const employee = await Karyawan.findOne({
    where: { user_id: req.body.user_id },
  });

  if (!userIdCheck) return res.status(404).json({ msg: "User Id not found" });

  if (!employee) {
    try {
      action(actionType, data, condition, furlough, req, res);
    } catch (error) {
      console.log(error);
    }
  } else if (employee.user_id == user_id) {
    try {
      action(actionType, data, condition, furlough, req, res);
    } catch (error) {
      console.log(error);
    }
  } else return res.status(400).json({ msg: "User Id must be unique" });
};

export const deleteKaryawan = async (req, res) => {
  // dapetin id
  const path = req.path;
  const user_id = path && path.split("/")[2];

  const actionType = "delete";
  const data = { status: "resign" };
  const condition = { where: { user_id: user_id } };

  try {
    action(actionType, data, condition, undefined, req, res);
  } catch (error) {
    console.log(error);
  }
};

export const action = async function (
  type,
  data,
  condition,
  furlough,
  req,
  res
) {
  await Karyawan.update(data, condition);
  if (type == "put") {
    if (furlough[0]) {
      const max = await Cuti.count({
        where: { id_karyawan: furlough[0].id_karyawan },
      });
      for (let pointer = 0; pointer < max; pointer++) {
        await Cuti.update(
          { id_karyawan: req.body.user_id, name: req.body.fullname },
          { where: { id_karyawan: furlough[pointer].id_karyawan } }
        );
      }
    }
    res.json({ msg: "Employee updated" });
  } else {
    res.json({ msg: "Employee deleted" });
  }
};
