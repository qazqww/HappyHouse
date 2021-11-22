import { listArticle } from "@/api/board.js";

const boardStore = {
  namespaced: true,
  state: {
    articles: [],
  },
  getters: {},
  mutations: {
    LOAD_ARTICLES: (state, articles) => {
      state.articles = articles;
    },
  },
  actions: {
    loadArticles: ({ commit }) => {
      listArticle(
        ({ data }) => {
          commit("LOAD_ARTICLES", data);
        },
        (error) => {
          console.log(error);
        }
      );
    },
  },
};

export default boardStore;
