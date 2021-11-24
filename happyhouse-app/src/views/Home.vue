<template>
  <article>
    <main-carousel />
    <main-house-wallpaper />
    <main-notice-board />
  </article>
</template>

<script>
import MainCarousel from "../components/MainCarousel.vue";
import MainNoticeBoard from "../components/MainNoticeBoard.vue";
import MainHouseWallpaper from "../components/MainHouseWallpaper.vue";

export default {
  name: "Home",

  components: {
    MainCarousel,
    MainNoticeBoard,
    MainHouseWallpaper,
  },
};
</script>
