<template>
  <article>
    <main-carousel />
    <hello-world />
  </article>
</template>

<script>
import HelloWorld from "../components/HelloWorld";
import MainCarousel from '../components/MainCarousel.vue';

export default {
  name: "Home",

  components: {
    HelloWorld,
    MainCarousel,
  },
};
</script>
