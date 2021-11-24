import { apiInstance } from "./index.js";

const api = apiInstance();

async function login(user, success, fail) {
  await api.post(`/user/login`, JSON.stringify(user)).then(success).catch(fail);
}

async function findById(userid, success, fail) {
  api.defaults.headers["access-token"] = sessionStorage.getItem("access-token");
  await api.get(`/user/info/${userid}`).then(success).catch(fail);
}

// async function modifyInfo(user, success, fail) {
//   api.defaults.headers["access-token"] = sessionStorage.getItem("access-token");
//   await api
//     .put(`/user/${user.userId}`, JSON.stringify(user))
//     .then(success)
//     .catch(fail);
// }

function modifyInfo(user, success, fail) {
  api
    .put(`/user`, JSON.stringify(user))
    .then(success)
    .catch(fail);
}

function deleteInfo(user, success, fail) {
  // api.defaults.headers["access-token"] = sessionStorage.getItem("access-token");
  api.delete(`/user/${user.userid}`).then(success).catch(fail);
}

function joinMember(user, success, fail) {
  api.post(`/user`, JSON.stringify(user)).then(success).catch(fail);
}

function checkId(userid, success, fail) {
  api.get(`/user/idcheck/?ckid=${userid}`).then(success).catch(fail);
}
// function logout(success, fail)

export { login, findById, modifyInfo, deleteInfo, joinMember, checkId };
