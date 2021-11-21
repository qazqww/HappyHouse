import { noticeList } from "@/api/notice.js";

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
      noticeList(
        ({ data }) => {
          commit("LOAD_NOTICES", data);
          console.log(data);
        },
        (error) => {
          console.log(error);
        }
      );
    },
  },
};

export default noticeStore;
