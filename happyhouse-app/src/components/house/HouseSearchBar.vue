<template>
  <v-row class="mt-4 mb-4 text-center">
    <!-- <b-col class="sm-3">
      <b-form-input
        v-model.trim="dongCode"
        placeholder="동코드 입력...(예 : 11110)"
        @keypress.enter="sendKeyword"
      ></b-form-input>
    </b-col>
    <b-col class="sm-3" align="left">
      <b-button variant="outline-primary" @click="sendKeyword">검색</b-button>
    </b-col> -->
    <v-col class="sm-3">
        <v-select :items="sidos" v-model="sidoCode" @change="gugunList" return-object></v-select>
    </v-col>
    <v-col class="sm-3">
        <v-select :items="guguns" v-model="gugunCode" @change="searchApt" return-object></v-select>
    </v-col>
  </v-row>
</template>

<script>
import { mapState, mapActions, mapMutations } from "vuex";

/*
  namespaced: true를 사용했기 때문에 선언해줍니다.
  index.js 에서 modules 객체의 '키' 이름입니다.

  modules: {
    키: 값
    memberStore: memberStore,
    houseStore: houseStore
  }  
*/
const houseStore = "houseStore";

export default {
  name: "HouseSearchBar",
  data() {
    return {
      sidoCode: null,
      gugunCode: null,
    };
  },
  computed: {
    ...mapState(houseStore, ["sidos", "guguns"]),
    // sidos() {
    //   return this.$store.state.sidos;
    // },
  },
  created() {
    // this.$store.dispatch("getSido");
    // this.sidoList();
    this.CLEAR_SIDO_LIST();
    this.getSido();
  },
  methods: {
    ...mapActions(houseStore, ["getSido", "getGugun", "getHouseList"]),
    ...mapMutations(houseStore, ["CLEAR_SIDO_LIST", "CLEAR_GUGUN_LIST", "SET_SIDO", "SET_GUGUN"]),
    // sidoList() {
    //   this.getSido();
    // },
    gugunList() {
      // console.log("시도 이름: ", this.sidoCode.text);
      this.CLEAR_GUGUN_LIST();
      this.SET_SIDO(this.sidoCode.text);
      this.gugunCode = null;
      if (this.sidoCode) this.getGugun(this.sidoCode.value);
    },
    searchApt() {
      this.SET_GUGUN(this.gugunCode.text);
      if (this.gugunCode) this.getHouseList(this.gugunCode.value);
    },
  },
};
</script>

<style></style>
