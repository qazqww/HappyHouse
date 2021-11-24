<template>
  <article>
    <main-carousel />
    <main-notice-board />
  </article>
</template>

<script>
import MainCarousel from "../components/MainCarousel.vue";
import MainNoticeBoard from "../components/MainNoticeBoard.vue";

export default {
  name: "Home",

  components: {
    MainCarousel,
    MainNoticeBoard,
  },
};
</script>
