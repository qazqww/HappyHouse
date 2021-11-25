<template>
  <v-row>
    <v-col>
      <v-card elevation="10" shaped class="mx-auto" max-width="1000" outlined>
        <v-data-table
          :headers="headers"
          :items="hospitals"
          hide-default-footer
          class="elevation-1"
          no-data-text="해당하는 데이터가 존재하지 않습니다."
          v-if="executed"
        ></v-data-table>
      </v-card>
    </v-col>
  </v-row>
</template>

<script>
import { mapActions, mapMutations, mapState } from "vuex";

const houseStore = "houseStore";
const hospitalStore = "hospitalStore";

export default {
  name: "HospitalList",
  data() {
    return {
      headers: [
        {
          text: "진료소 이름",
          align: "start",
          sortable: true,
          value: "hospname",
        },
        { text: "전화번호", sortable: false, value: "tel" },
      ],
    };
  },
  computed: {
    ...mapState(hospitalStore, ["hospitals", "executed"]),
    ...mapState(houseStore, ["gugun"]),
  },
  methods: {
    ...mapMutations(hospitalStore, [
      "SET_HOSPITAL_LIST",
      "CLEAR_HOSPITAL_LIST",
    ]),
    ...mapActions(hospitalStore, ["getHospitalList"]),
  },
  destroyed() {
    this.CLEAR_HOSPITAL_LIST();
  },
};
</script>

<style></style>
