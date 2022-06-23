import Cuti from "../models/CutiModel.js";
import Karyawan from "../models/KaryawanModel.js";

export const getAllKaryawansResign = async (req, res) => {
  try {
    const karyawans = await Karyawan.findAll({
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
        "tanggalresign",
      ],
      where: { status: "resign" },
    });
    res.json(karyawans);
  } catch (error) {
    console.log(error);
  }
};
