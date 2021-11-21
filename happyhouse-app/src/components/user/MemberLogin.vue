<template>
  <v-container>
    <v-row>
      <v-col> <h3>로그인 페이지입니다</h3></v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  name: "MemberLogin",
  data() {
    return {
      user: {
        userid: null,
        userpwd: null,
      },
    };
  },
};
</script>

<style></style>
