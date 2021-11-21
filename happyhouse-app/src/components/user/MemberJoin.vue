<template>
  <v-container>
    <v-row>
      <v-col> <h3>회원가입 페이지입니다</h3></v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  name: "MemberJoin",
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
