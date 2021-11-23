<template>
  <article>
    <main-carousel />
    <hello-world />
    <main-notice-board />
  </article>
</template>

<script>
import HelloWorld from "../components/HelloWorld";
import MainCarousel from "../components/MainCarousel.vue";
import MainNoticeBoard from "../components/MainNoticeBoard.vue";

export default {
  name: "Home",

  components: {
    HelloWorld,
    MainCarousel,
    MainNoticeBoard,
  },
};
</script>
