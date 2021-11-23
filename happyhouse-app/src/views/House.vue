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
    <kakao-map ref="kmap" class="kmap" :options="mapOption" />
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
    return {
      mapOption: {
        center: {
          lat: 32.450701,
          lng: 126.570667,
        },
        level: 3,
      },
      apts: [],
      markers: null,
    }
  },
};
</script>

<style></style>
