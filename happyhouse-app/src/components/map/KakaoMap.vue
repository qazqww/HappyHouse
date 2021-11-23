<template>
  <div>
    <div id="map" ref="kmap" style="width: 500px; height: 400px"></div>
    <v-btn @click="getLocationsWithKeyword">눌러</v-btn>
  </div>
</template>

<script>
import { mapGetters } from "vuex";
let kakao = window.kakao;
const houseStore = "houseStore";

// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
var infowindow = new kakao.maps.InfoWindow({ zIndex: 1 });

export default {
  data() {
    return {
      mapInstance: null,
      options: {},
    };
  },
  computed: {
    ...mapGetters(houseStore, ["getHouse", "getKeywords", "getOption"]),
  },
  created() {
    this.options = this.getOption;
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
    getLocation(keyword) {
      // 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
      new kakao.maps.InfoWindow({ zIndex: 1 });

      // 장소 검색 객체를 생성합니다
      var ps = new kakao.maps.services.Places();

      console.log("검색 시작", keyword);
      // 키워드로 장소를 검색합니다
      ps.keywordSearch(keyword, this.placesSearchCB);
    },
    getLocationsWithKeyword() {
      // 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
      new kakao.maps.InfoWindow({ zIndex: 1 });

      // 장소 검색 객체를 생성합니다
      var ps = new kakao.maps.services.Places();

      this.getKeywords.forEach((keyword) => {
        console.log(keyword);
        // 키워드로 장소를 검색합니다
        ps.keywordSearch(keyword, this.placesSearchCB);
      });
    },

    // 키워드 검색 완료 시 호출되는 콜백함수 입니다
    placesSearchCB(data, status) {
      var map = this.mapInstance;
      if (status === kakao.maps.services.Status.OK) {
        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        var bounds = new kakao.maps.LatLngBounds();

        for (var i = 0; i < 1; i++) {
          this.displayMarker(data[i]);
          bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
        }

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
        map.setBounds(bounds);
      }
    },

    // 지도에 마커를 표시하는 함수입니다
    displayMarker(place) {
      var map = this.mapInstance;
      // 마커를 생성하고 지도에 표시합니다
      var marker = new kakao.maps.Marker({
        map: map,
        position: new kakao.maps.LatLng(place.y, place.x),
      });

      // 마커에 클릭이벤트를 등록합니다
      kakao.maps.event.addListener(marker, "click", function () {
        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
        infowindow.setContent(
          '<div style="padding:5px;font-size:12px;">' +
            place.place_name +
            "</div>"
        );
        infowindow.open(map, marker);
      });
    },
  },
  watch: {
    // "getOpion.center"(cur) {
    //   console.log(cur);
    // },
    getHouse({ 법정동, 아파트 }) {
      this.getLocation(법정동 + " " + 아파트);
      console.log("getHouse", 법정동, 아파트);
    },
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
