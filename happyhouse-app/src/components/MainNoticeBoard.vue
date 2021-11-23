<template>
  <v-container class="grey lighten-5">
    <v-row no-gutters>
      <template>
        <v-col>
          <v-card class="pa-2" outlined tile> 공지사항 </v-card>
        </v-col>
        <v-col>
          <v-card class="pa-2" outlined tile> 게시판 </v-card>
        </v-col>
        <!-- <v-responsive
          v-if="n === 2"
          :key="`width-${n}`"
          width="100%"
        ></v-responsive> -->
      </template>
    </v-row>
  </v-container>
</template>

<script>
export default {
  name: "MainNoticeBoard",
};
</script>

<style></style>
