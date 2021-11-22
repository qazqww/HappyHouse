<template>
  <v-container v-if="house" class="bv-example-row">
    <v-row>
      <v-col
        ><h3>{{ house.아파트 }}</h3></v-col
      >
    </v-row>
    <v-row class="mb-2 mt-1">
      <v-col
        ><v-img :src="require('@/assets/logo.png')" fluid-grow></v-img
      ></v-col>
    </v-row>
    <v-row>
      <v-col>
        <v-alert show variant="secondary"
          >일련번호 : {{ house.일련번호 }}</v-alert
        >
      </v-col>
    </v-row>
    <v-row>
      <v-col>
        <v-alert show variant="primary"
          >아파트 이름 : {{ house.아파트 }}
        </v-alert>
      </v-col>
    </v-row>
    <v-row>
      <v-col>
        <v-alert show variant="info">법정동 : {{ house.법정동 }} </v-alert>
      </v-col>
    </v-row>
    <v-row>
      <v-col>
        <v-alert show variant="warning">층수 : {{ house.층 }}층</v-alert>
      </v-col>
    </v-row>
    <v-row>
      <v-col>
        <v-alert show variant="danger"
          >거래금액 :
          {{
            (parseInt(house.거래금액.replace(",", "")) * 10000) | price
          }}원</v-alert
        >
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import { mapState } from "vuex";

const houseStore = "houseStore";

export default {
  name: "HouseDetail",
  computed: {
    ...mapState(houseStore, ["house"]),
    // house() {
    //   return this.$store.state.house;
    // },
  },
  filters: {
    price(value) {
      if (!value) return value;
      return value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    },
  },
};
</script>

<style></style>
