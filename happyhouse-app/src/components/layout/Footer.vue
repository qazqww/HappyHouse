<template>
  <!-- <v-footer class="py-4" dark height="auto">
    <v-container class="mx-auto">
      <v-row>
        <v-col cols="9">
          <v-btn
            v-for="(item, i) in items"
            :key="i"
            :href="item.href"
            class="ml-0 mr-3"
            color="primary"
            square
            target="_blank"
          >
            <v-icon v-text="item.icon" />
          </v-btn>
        </v-col>

        <v-spacer />

        <v-btn
          class="mr-0"
          color="primary"
          square
          title="Go to top"
          @click="$vuetify.goTo(0)"
        >
          <v-icon>mdi-chevron-up</v-icon>
        </v-btn>
      </v-row>
    </v-container>
  </v-footer> -->
  <v-footer color="secondary lighten-1" padless>
    <v-row justify="center" no-gutters>
      <v-btn
        v-for="(link, idx) in links"
        :key="idx"
        :href="link.href"
        color="white"
        text
        rounded
        class="my-2"
      >
        {{ link.name }}
      </v-btn>
      <v-col
        justify="center"
        align="center"
        class="secondary lighten-2 py-4 white--text"
        cols="12"
      >
        <a href="https://www.ssafy.com"
          ><v-img
            alt="SSAFY Logo"
            contain
            src="@/assets/ssafy_logo.png"
            transition="scale-transition"
            width="100"
            align="left"
        /></a>
        <a href="mailto:"></a>
        Copyright © {{ new Date().getFullYear() }} — <strong>SSAFY</strong> All
        Rights Reserved.
      </v-col>
    </v-row>
  </v-footer>
</template>

<script>
export default {
  name: "Footer",

  data: () => ({
    links: [
      {
        name: "HOME",
        href: "/",
      },
      {
        name: "ABOUT US",
        href: "https://www.ssafy.com",
      },
      {
        name: "TEAM",
        href: "https://lab.ssafy.com/qazqww/happyhouse_final",
      },
      {
        name: "SERVICES",
        href: "#!",
      },
      {
        name: "BLOG",
        href: "#!",
      },
      {
        name: "CONTACT US",
        href: "mailto:'rimha@gmail.com'",
      },
    ],
  }),
};
</script>
