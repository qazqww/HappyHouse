<template>
  <v-container class="bv-example-row mt-3 text-center">
    <h3 class="underline-orange">
      <v-icon icon="house-fill"></v-icon> 코로나 선별 진료소 검색
    </h3>
    <v-row>
      <v-col>
        <hospital-search-bar />
      </v-col>
    </v-row>

    <hospital-list />
    <br />
    <br />
  </v-container>
</template>

<script>
import HospitalSearchBar from "@/components/hospital/HospitalSearchBar.vue";
import HospitalList from "@/components/hospital/HospitalList.vue";

export default {
  name: "Hospital",
  components: {
    HospitalSearchBar,
    HospitalList,
  },
};
</script>

<style></style>
