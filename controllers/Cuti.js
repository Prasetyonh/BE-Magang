import Cuti from "../models/CutiModel.js";

export const getCuti = async (req, res) => {
  try {
    const cuti = await Cuti.findAll({});
    res.json(cuti);
  } catch (error) {
    console.log(error);
  }
};

export const createCuti = async (req, res) => {
  const dateCheck = await Cuti.findOne({
    where: [{ name: req.body.name }, { tanggal: req.body.tanggal }],
  });

  if (dateCheck) return res.status(400).json({ msg: "Data failed to enter" });

  try {
    await Cuti.create(req.body);
    res.json({ msg: "Data entered successfully" });
  } catch (error) {
    console.log(error);
  }
};

export const deleteCuti = async (req, res) => {
  const path = req.path;
  const id = path && path.split("/")[2];

  const employee = await Cuti.findOne({ where: { id: id } });

  if (!employee)
    return res.status(404).json({ msg: "Employee not found" });

  try {
    await employee.destroy();
    res.json({ msg: "Data deleted" });
  } catch (error) {
    console.log(error);
  }
};
