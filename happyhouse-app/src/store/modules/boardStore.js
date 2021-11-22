import { getArticle, listArticle } from "@/api/board.js";

const boardStore = {
  namespaced: true,
  state: {
    article: {},
    articles: [],
  },
  getters: {
    getArticleNo(state) {
      return state.article.articleno;
    }
  },
  mutations: {
    LOAD_ARTICLES: (state, articles) => {
      state.articles = articles;
    },
    GET_VIEW_ARTICLE: (state, article) => {
      state.article = article;
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
    getViewArticle: ({ commit }, no) => {
      getArticle(
        no,
        ({ data }) => {
          commit("GET_VIEW_ARTICLE", data);
        },
        (error) => {
          console.log(error);
        }
      );
    },
  },
};

export default boardStore;