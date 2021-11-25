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
        ></v-select>
      </v-col>
      <v-col class="sm-3">
        <v-select
          :items="guguns"
          v-model="gugunCode"
          @change="searchApt"
          return-object
        ></v-select>
      </v-col>
    </v-row>
    <v-btn @click="addFavorite" v-if="houses.length">관심지역 등록</v-btn>
  </v-container>
</template>

<script>
import { mapState, mapActions, mapMutations, mapGetters } from "vuex";
import { checkFavorite, registerFavorite } from "@/api/favorite.js";
import { registerValue } from "@/api/apartvalue.js";

const memberStore = "memberStore";
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
    ...mapState(houseStore, ["sidos", "guguns", "houses"]),
    ...mapGetters(houseStore, ["getSidoGugun"]),
    ...mapGetters(memberStore, ["checkUserInfo"]),
  },
  created() {
    this.getSido();
  },
  destroyed() {
    this.CLEAR_SIDO_LIST();
    this.CLEAR_DETAIL_HOUSE();
  },
  methods: {
    ...mapActions(houseStore, ["getSido", "getGugun", "getHouseList"]),
    ...mapMutations(houseStore, [
      "CLEAR_SIDO_LIST",
      "CLEAR_GUGUN_LIST",
      "SET_SIDO",
      "SET_GUGUN",
      "CLEAR_DETAIL_HOUSE",
    ]),
    gugunList() {
      this.CLEAR_GUGUN_LIST();
      this.SET_SIDO(this.sidoCode.text);
      this.gugunCode = null;
      if (this.sidoCode) this.getGugun(this.sidoCode.value);
    },
    searchApt() {
      this.SET_GUGUN(this.gugunCode.text);
      if (this.gugunCode) this.getHouseList(this.gugunCode.value);
    },
    addFavorite() {
      const fav = {
        userid: this.checkUserInfo.userid,
        gugunCode: this.gugunCode.value + "00000",
      };
      checkFavorite(
        fav,
        ({ data }) => {
          if (data === "success") {
            if (
              confirm(
                `${this.getSidoGugun} 을(를) 관심지역에 등록하시겠습니까?`
              )
            ) {
              this.getAverage();
              registerFavorite(
                fav,
                ({ data }) => {
                  let msg = "등록 중 문제가 발생하였습니다.";
                  if (data === "success") {
                    msg = "등록이 완료되었습니다.";
                  }
                  alert(msg);
                },
                (error) => {
                  console.log(error);
                }
              );
            }
          } else {
            let msg = "이미 관심지역에 등록된 지역입니다.";
            alert(msg);
          }
        },
        (error) => {
          console.log(error);
        }
      );
    },
    getAverage() {
      let total = 0;
      this.houses.forEach((house) => {
        total += Number(house.거래금액.replace(",", ""));
      });
      total /= 10;
      const param = {
        average: total,
        gugunCode: this.gugunCode.value + '00000',
      };
      registerValue(
        param,
        ({ data }) => {
          console.log(data);
        },
        (error) => {
          console.log(error);
        }
      );
    },
  },
};
</script>

<style></style>
