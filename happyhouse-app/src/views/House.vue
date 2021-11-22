<template>
  <v-container class="bv-example-row mt-3 text-center">
    <h3 class="underline-orange">
      <v-icon icon="house-fill"></v-icon> House Service
    </h3>
    <v-row>
      <v-col>
        <house-search-bar></house-search-bar>
      </v-col>
    </v-row>
    <v-row>
      <v-col cols="6" align="left">
        <house-list />
      </v-col>
      <v-col cols="6">
        <house-detail />
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import HouseSearchBar from "@/components/house/HouseSearchBar.vue";
import HouseList from "@/components/house/HouseList.vue";
import HouseDetail from "@/components/house/HouseDetail.vue";

export default {
  name: "House",
  components: {
    HouseSearchBar,
    HouseList,
    HouseDetail,
  },
};
</script>

<style></style>
