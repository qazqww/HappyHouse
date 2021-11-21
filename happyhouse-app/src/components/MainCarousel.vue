<template>
  <v-carousel cycle height="300" show-arrows-on-hover>
    <v-carousel-item v-for="(item, i) in items" :key="i" :src="item.src">
      <v-overlay absolute>
        <v-row class="fill-height" align="center" justify="center">
          <div class="text-h2 white--text" v-html="item.text"></div> </v-row
      ></v-overlay>
    </v-carousel-item>
  </v-carousel>
</template>

<script>
export default {
  data() {
    return {
      items: [
        {
          src: require("@/assets/banner1.jpg"),
          text: "Happy House",
        },
        {
          src: require("@/assets/banner2.jpg"),
          text: "SSAFY Happy House",
        },
      ],
    };
  },
};
</script>
q