import { apiInstance } from "./index.js";

const api = apiInstance();

function listHospital(loc, success, fail) {
  // console.log(loc);
  api
    .get(`/hospital?sidoName=${loc.sidoName}&gugunName=${loc.gugunName}`)
    .then(success)
    .catch(fail);
}

export { listHospital };
