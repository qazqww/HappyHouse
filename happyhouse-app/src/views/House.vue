<template>
  <v-container class="bv-example-row mt-3 text-center">
    <v-row>
      <v-col>
        <house-search-bar></house-search-bar>
      </v-col>
    </v-row>
    <br /><br />

    <v-card
      class="mx-auto"
      elevation="10"
      shaped
      max-width="900"
      min-height="400"
    >
      <v-row>
        <v-col cols="6">
          <house-list />
        </v-col>
        <v-col cols="6">
          <house-detail />
        </v-col>
      </v-row>
    </v-card>
    <br />
    <br />
    <br />
    <v-card class="mx-auto">
      <kakao-map ref="kmap" class="kmap" />
    </v-card>
    <br />
    <br />
  </v-container>
</template>

<script>
import HouseSearchBar from "@/components/house/HouseSearchBar.vue";
import HouseList from "@/components/house/HouseList.vue";
import HouseDetail from "@/components/house/HouseDetail.vue";
import KakaoMap from "@/components/map/KakaoMap.vue";

export default {
  name: "House",
  components: {
    HouseSearchBar,
    HouseList,
    HouseDetail,
    KakaoMap,
  },
  data() {
    return {};
  },
};
</script>

<style></style>
