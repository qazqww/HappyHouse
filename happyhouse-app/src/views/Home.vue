<template>
  <article>
    <main-carousel />
    <br />
    <main-house-wallpaper />
    <br />
    <br />
    <main-notice-board />
    <br />
    <br />
    <br />
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
