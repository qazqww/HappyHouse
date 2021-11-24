import { listHospital } from "@/api/hospital";

const hospitalStore = {
  namespaced: true,
  state: {
    hospitals: [],
    executed: false,
  },
  getters: {},
  mutations: {
    SET_HOSPITAL_LIST: (state, hospitals) => {
      state.hospitals = hospitals;
      state.executed = true;
    },
    CLEAR_HOSPITAL_LIST: (state) => {
      state.hospitals = [];
      state.executed = false;
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
