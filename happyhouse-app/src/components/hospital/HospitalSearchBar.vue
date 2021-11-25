<template>
  <v-container>
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
        <v-select
          :items="sidos"
          v-model="sidoCode"
          @change="gugunList"
          return-object
          label="시·도"
          outlined
        ></v-select>
      </v-col>
      <v-col class="sm-3">
        <v-select
          :items="guguns"
          v-model="gugunCode"
          @change="searchHosp"
          return-object
          label="구·군"
          outlined
        ></v-select>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import { mapState, mapActions, mapMutations } from "vuex";

const houseStore = "houseStore";
const hospitalStore = "hospitalStore";

export default {
  name: "HospitalSearchBar",
  data() {
    return {
      sidoCode: null,
      gugunCode: null,
    };
  },
  computed: {
    ...mapState(houseStore, ["sidos", "guguns"]),
  },
  created() {
    this.getSido();
  },
  destroyed() {
    this.CLEAR_SIDO_LIST();
    this.CLEAR_GUGUN_LIST();
    this.CLEAR_HOSPITAL_LIST();
  },
  methods: {
    ...mapActions(houseStore, ["getSido", "getGugun"]),
    ...mapMutations(houseStore, [
      "CLEAR_SIDO_LIST",
      "CLEAR_GUGUN_LIST",
      "SET_SIDO",
      "SET_GUGUN",
    ]),
    ...mapActions(hospitalStore, ["getHospitalList"]),
    ...mapMutations(hospitalStore, ["CLEAR_HOSPITAL_LIST"]),
    gugunList() {
      this.CLEAR_GUGUN_LIST();
      this.SET_SIDO(this.sidoCode.text);
      this.gugunCode = null;
      if (this.sidoCode) this.getGugun(this.sidoCode.value);
    },
    searchHosp() {
      this.SET_GUGUN(this.gugunCode.text);
      if (this.gugunCode)
        this.getHospitalList({
          sidoName: this.sidoCode.text,
          gugunName: this.gugunCode.text,
        });
    },
  },
};
</script>

<style></style>
