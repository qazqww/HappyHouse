import { apiInstance } from './index.js';

const api = apiInstance();

function registerValue(apartvalue, success, fail) {
    console.log(apartvalue);
    api.post(`/value`, JSON.stringify(apartvalue)).then(success).catch(fail);
}

function getValue(gugun, success, fail) {
    api.get(`/value/${gugun}`).then(success).catch(fail);
}

export { registerValue, getValue };