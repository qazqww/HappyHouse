import { apiInstance } from './index.js';

const api = apiInstance();

function noticeList(success, fail) {
    api.get(`/notice`).then(success).catch(fail);
}

export { noticeList };