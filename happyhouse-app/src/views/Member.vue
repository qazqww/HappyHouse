<template>
  <v-container>
    <div justify="center" align="center">
      <h3>Member 페이지입니다.</h3>
    </div>
    <v-row>
      <v-col justify="center" align="center"><h3>v-col1</h3></v-col>
    </v-row>
    <v-row>
      <v-col justify="center" align="center"><h3>v-col2</h3></v-col>
    </v-row>
    <v-row>
      <v-col justify="center" align="center"><h3>v-col3</h3></v-col>
    </v-row>
    <v-row>
      <v-col justify="center" align="center"><router-view></router-view></v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  name: "Member",
};
</script>

<style></style>
