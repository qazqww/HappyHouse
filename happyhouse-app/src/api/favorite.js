import { apiInstance } from "./index.js";

const api = apiInstance();

function listFavorite(userid, success, fail) {
  api.get(`/favorite/${userid}`).then(success).catch(fail);
}

function registerFavorite(fav, success, fail) {
  console.log(fav);
  api.post(`/favorite`, JSON.stringify(fav)).then(success).catch(fail);
}

function deleteFavorite(favno, success, fail) {
  api.delete(`/favorite/${favno}`).then(success).catch(fail);
}

export { listFavorite, registerFavorite, deleteFavorite };
