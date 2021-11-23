<template>
  <div>
    <div id="map" ref="kmap" style="width: 500px; height: 400px"></div>
    <v-btn @click="getLocation">눌러</v-btn>
  </div>
</template>

<script>
import { mapGetters } from "vuex";
let kakao = window.kakao;
const houseStore = "houseStore";

export default {
  data() {
    return {
      mapInstance: null,
    };
  },
  props: ["options"],
  computed: {
    ...mapGetters(houseStore, ["getKeywords"]),
  },
  mounted() {
    var container = this.$refs.kmap;
    const { center, level } = this.options;
    this.mapInstance = new kakao.maps.Map(container, {
      center: new kakao.maps.LatLng(center.lat, center.lng),
      level,
    }); //지도 생성 및 객체 리턴
    // console.log(map);
  },
  methods: {
    getLocation() {
      // 지도를 생성합니다
      var map = this.mapInstance;

      // 주소-좌표 변환 객체를 생성합니다
      var geocoder = new kakao.maps.services.Geocoder();

      this.getKeywords.forEach((keyword) => {
        // console.log(keyword);
        // 주소로 좌표를 검색합니다
        geocoder.addressSearch(keyword, function (result, status) {
          // 정상적으로 검색이 완료됐으면
          if (status === kakao.maps.services.Status.OK) {
            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

            // 결과값으로 받은 위치를 마커로 표시합니다
            var marker = new kakao.maps.Marker({
              map: map,
              position: coords,
            });

            // 인포윈도우로 장소에 대한 설명을 표시합니다
            var infowindow = new kakao.maps.InfoWindow({
              content:
                `<div style="width:150px;text-align:center;padding:6px 0;">${keyword}</div>`,
            });
            infowindow.open(map, marker);

            // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
            map.setCenter(coords);
          }
        });
      });
    },
  },
  watch: {
    // "options.level"(cur) {
    //   this.mapInstance.setLevel(cur);
    // },
    // "options.center"(cur) {
    //   this.mapInstance.setCenter(new kakao.maps.LatLng(cur.lat, cur.lng));
    // },
  },
};
</script>

<style>
#map {
  width: 100%;
  height: 600px;
}
</style>
