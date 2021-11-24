<template>
  <v-row>
    <v-col justify="center">
      <br />
      <br />
      <br />
      <v-card class="mx-auto" align="center" flat tile>
        <br />
        <v-img
          :src="require('@/assets/apartment_wallpaper.jpg')"
          class="grey lighten-2"
          height="400"
          width="77%"
        >
          <v-row class="fill-height pa-3" align="center">
            <v-col cols="12" md="7" offset-md="6">
              <h2 style="color: white" class="display-3 font-weight-light">
                HAPPY HOUSE
              </h2>

              <div
                style="color: white"
                class="subheading text-uppercase pl-2 mb-4"
              >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Finding Beauty, One Click at a time
              </div>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

              <v-btn
                large
                color="primary"
                depressed
                style="font-size: 15px"
                :to="{ name: 'House' }"
              >
                &nbsp;&nbsp;&nbsp;SEARCH&nbsp;&nbsp;&nbsp;
              </v-btn>
            </v-col>
          </v-row>
        </v-img>
      </v-card>
    </v-col>
  </v-row>
</template>

<script>
export default {
  name: "MainHouseWallpaper",
};
</script>

<style></style>
