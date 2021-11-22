import { apiInstance } from './index.js';

const api = apiInstance();

function listMemo(articleno, success, fail) {
    api.get(`/memo/${articleno}`).then(success).catch(fail);
}

function writeMemo(memo, success, fail) {
    console.log("this", memo);
    api.post('/memo', JSON.stringify(memo)).then(success).catch(fail);
}

function modifyMemo(memo, success, fail) {
    api.put(`/memo`, JSON.stringify(memo)).then(success).catch(fail);
}

function deleteMemo(memono, success, fail) {
    api.delete(`/memo/${memono}`).then(success).catch(fail);
}

export { listMemo, writeMemo, modifyMemo, deleteMemo };