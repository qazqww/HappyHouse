<template>
  <div>
    <v-data-table
      :headers="headers"
      :items="hospitals"
      hide-default-footer
      class="elevation-1"
    ></v-data-table>
  </div>
</template>

<script>
import { mapActions, mapMutations, mapState } from "vuex";

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
    ...mapState(hospitalStore, ["hospitals"]),
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
