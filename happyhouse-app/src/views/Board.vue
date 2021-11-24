<template>
  <v-container class="text-center">
    <v-row>
      <v-col justify="center" align="center">
        <v-card elevation="0">
          <br />
          <router-link to="/">
            <v-img
              alt="Letter Logo"
              contain
              src="@/assets/qna.png"
              transition="scale-transition"
              width="150"
            />
            <br />
          </router-link>
        </v-card>
      </v-col>
    </v-row>
    <router-view></router-view>
    <br />
    <br />
    <br />
  </v-container>
</template>

<script>
export default {
  name: "Board",
};
</script>

<style></style>
