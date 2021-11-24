import { listHospital } from "@/api/hospital";

const hospitalStore = {
  namespaced: true,
  state: {
    hospitals: [],
  },
  getters: {},
  mutations: {
    SET_HOSPITAL_LIST: (state, hospitals) => {
      state.hospitals = hospitals;
    },
    CLEAR_HOSPITAL_LIST: (state) => {
      state.hospitals = [];
    },
  },
  actions: {
    getHospitalList: ({ commit }, loc) => {
      listHospital(
        loc,
        ({ data }) => {
          // console.log(data);
          commit("SET_HOSPITAL_LIST", data);
        },
        (error) => {
          console.log(error);
        }
      );
    },
  },
};

export default hospitalStore;
