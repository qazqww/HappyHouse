import { listNotice } from "@/api/notice.js";

const noticeStore = {
  namespaced: true,
  state: {
    notices: [],
  },
  getters: {},
  mutations: {
    LOAD_NOTICES: (state, notices) => {
      state.notices = notices;
    },
  },
  actions: {
    loadNotices: ({ commit }) => {
      listNotice(
        ({ data }) => {
          commit("LOAD_NOTICES", data);
        },
        (error) => {
          console.log(error);
        }
      );
    },
  },
};

export default noticeStore;
